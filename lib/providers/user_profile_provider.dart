import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sossho_app/model/profile_update_request.dart';
import 'package:sossho_app/utils/error_as_value.dart';

import '../model/get_profile_response.dart';
import 'api_provider.dart';

part 'user_profile_provider.g.dart';

@riverpod
class UserProfile extends _$UserProfile {
  @override
  Future<GetProfileResponse> build() async {
    final api = await ref.read(secureApiProvider.future);
    return await api.getProfile();
  }

  Future<void> updateProfile({
    required ProfileUpdateRequest request,
  }) async {
    final api = await ref.read(secureApiProvider.future);
    await api
        .profileUpdate(
          request: request,
        )
        .errorAsValue();
    ref.invalidateSelf();
  }
}

@riverpod
Future<bool> isLoggedIn(IsLoggedInRef ref) async {
  final api = await ref.read(secureApiProvider.future);
  final response = await api.getProfile().errorAsValue();
  return response is AsyncData && response.value != null;
}
