import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sossho_app/model/get_billing_address_response.dart';
import 'package:sossho_app/model/profile_update_request.dart';
import 'package:sossho_app/utils/error_as_value.dart';

import '../model/get_profile_response.dart';
import '../model/update_billing_address.request.dart';
import 'api_provider.dart';

part 'billing_address_provider.g.dart';

@riverpod
class BillingAddress extends _$BillingAddress {
  @override
  Future<GetBillingAddressResponse?> build() async {
    final api = await ref.read(secureApiProvider.future);
    try {
      return await api.getBillingAddress();
    } catch (_) {
      return null;
    }
  }

  Future<AsyncValue> deleteBillingAddress({
    required String addressId,
  }) async {
    final api = await ref.read(secureApiProvider.future);
    final res = await api
        .deleteBillingAddress(
          addressId: addressId,
        )
        .errorAsValue();
    ref.invalidateSelf();
    return res;
  }

  Future<void> updateBillingAddress({
    required String addressId,
    required UpdateBillingAddressRequest request,
  }) async {
    final api = await ref.read(secureApiProvider.future);
    await api
        .updateBillingAddress(
          addressId: addressId,
          request: request,
        )
        .errorAsValue();
    ref.invalidateSelf();
  }

  Future<void> createBillingAddress({
    required UpdateBillingAddressRequest request,
  }) async {
    final api = await ref.read(secureApiProvider.future);
    await api
        .createBillingAddress(
          request: request,
        )
        .errorAsValue();
    ref.invalidateSelf();
  }
}
