import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sossho_app/model/get_reviews_response.dart';
import 'package:sossho_app/providers/api_provider.dart';

part 'review_provider.g.dart';

@riverpod
Future<List<Review>> getReviews(GetReviewsRef ref) async {
  final api = await ref.read(secureApiProvider.future);
  final response = await api.getReviews();
  return response;
}
