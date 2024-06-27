import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension FutureExtensions<R> on Future<R> {
  Future<AsyncValue<R>> errorAsValue() async {
    try {
      return AsyncValue.data(await this);
    } on DioException catch (e) {
      return AsyncError(e, StackTrace.current);
    }
  }
}
