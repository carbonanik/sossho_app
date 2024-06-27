import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sossho_app/utils/error_as_value.dart';

import '../backend/auth_data.dart';
import '../backend/auth_persist_data.dart';
import '../model/login_response.dart';
import 'api_provider.dart';

part 'login_provider.g.dart';

@riverpod
class Login extends _$Login {
  void login({
    required String email,
    required String password,
  }) async {
    state = const AsyncLoading();
    final api = ref.read(publicApiProvider);
    final res = await api
        .login(
          email: email,
          password: password,
        )
        .errorAsValue();
    state = res;
    if (res.hasError) {
      return;
    }
    final authData = AuthData(token: res.valueOrNull?.accessToken ?? '');
    await AuthPersistData().setAuthData(authData);
    ref.invalidate(publicApiProvider);
    ref.invalidate(secureApiProvider);
  }

  @override
  Future<LoginResponse?> build() {
    return Future.value(null);
  }
}

@riverpod
bool loginLoading(LoginLoadingRef ref) => ref.watch(loginProvider).isLoading;

@riverpod
loginError(LoginErrorRef ref) =>
    ref.watch(loginProvider).whenOrNull(error: (error, stackTrace) => error);

@riverpod
loginSuccess(LoginSuccessRef ref) =>
    ref.watch(loginProvider).whenOrNull(data: (value) => value);
