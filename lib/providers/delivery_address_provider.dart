import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sossho_app/model/get_billing_address_response.dart';
import 'package:sossho_app/model/profile_update_request.dart';
import 'package:sossho_app/utils/error_as_value.dart';

import '../model/get_profile_response.dart';
import '../model/update_billing_address.request.dart';
import 'api_provider.dart';

part 'delivery_address_provider.g.dart';

@riverpod
class DeliveryAddress extends _$DeliveryAddress {
  @override
  Future<GetBillingAddressResponse> build() async {
    final api = await ref.read(secureApiProvider.future);
    return await api.getDeliveryAddress();
  }

  Future<AsyncValue> deleteDeliveryAddress({
    required String addressId,
  }) async {
    final api = await ref.read(secureApiProvider.future);
    final res = await api
        .deleteDeliveryAddress(
          addressId: addressId,
        )
        .errorAsValue();
    ref.invalidateSelf();
    return res;
  }

  Future<void> updateDeliveryAddress({
    required String addressId,
    required UpdateBillingAddressRequest request,
  }) async {
    final api = await ref.read(secureApiProvider.future);
    await api
        .updateDeliveryAddress(
          addressId: addressId,
          request: request,
        )
        .errorAsValue();
    ref.invalidateSelf();
  }

  Future<void> createDeliveryAddress({
    required UpdateBillingAddressRequest request,
  }) async {
    final api = await ref.read(secureApiProvider.future);
    await api
        .createDeliveryAddress(
          request: request,
        )
        .errorAsValue();
    ref.invalidateSelf();
  }
}
