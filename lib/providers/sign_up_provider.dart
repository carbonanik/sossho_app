import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sossho_app/model/sign_up_request.dart';
import 'package:sossho_app/utils/error_as_value.dart';

import '../backend/auth_data.dart';
import '../backend/auth_persist_data.dart';
import '../model/login_response.dart';
import 'api_provider.dart';

part 'sign_up_provider.g.dart';

@riverpod
class SignUp extends _$SignUp {
  void signUp({
    required SignUpRequest data,
  }) async {
    state = const AsyncLoading();
    final api = ref.read(publicApiProvider);
    final res = await api.signUp(data: data).errorAsValue();
    state = res;
    if (res.hasError) {
      return;
    }
    final authData = AuthData(token: res.valueOrNull?.accessToken ?? '');
    await AuthPersistData().setAuthData(authData);
  }

  @override
  Future<LoginResponse?> build() {
    return Future.value(null);
  }
}

@riverpod
bool signUpLoading(SignUpLoadingRef ref) => ref.watch(signUpProvider).isLoading;

@riverpod
signUpError(SignUpErrorRef ref) =>
    ref.watch(signUpProvider).whenOrNull(error: (error, stackTrace) => error);

@riverpod
signUpSuccess(SignUpSuccessRef ref) =>
    ref.watch(signUpProvider).whenOrNull(data: (value) => value);
