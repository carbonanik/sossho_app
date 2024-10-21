import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sossho_app/page/leave_review.dart';
import 'package:sossho_app/providers/review_provider.dart';
import 'package:sossho_app/providers/user_provider.dart';
import 'package:sossho_app/utils/navigation.dart';
import 'package:sossho_app/widgets/app_button.dart';

import '../model/get_reviews_response.dart';
import '../widgets/common_app_bar.dart';

class AllReviewsPage extends StatelessWidget {
  const AllReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'All Reviews'),
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(child: SizedBox(height: 20)),
                SliverToBoxAdapter(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '4.5',
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                for (int i = 0; i < 5; i++)
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                              ],
                            ),
                            Consumer(builder: (context, ref, child) {
                              final reviews = ref.watch(getReviewsProvider);
                              return  Text('${reviews.value?.length ?? 0} Reviews');

                            }),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                        child: VerticalDivider(),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            for (int i = 5; i > 0; i--)
                              Row(
                                children: [
                                  Text(i.toString()),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 6,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            color: Colors.grey.shade300,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: i,
                                              child: Container(
                                                height: 6,
                                                width: 100,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(3),
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 5 - i,
                                              child: const SizedBox(),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 20)),
                Consumer(builder: (context, ref, child) {
                  final reviews = ref.watch(getReviewsProvider);
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) =>
                          ReviewCard(review: reviews.value![index]),
                      childCount: reviews.value?.length ?? 0,
                    ),
                  );
                }),
              ],
            ),
          ),
          // write a review button
          Container(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 16,
              top: 16,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              border: Border(
                top: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1,
                ),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  offset: Offset(0, -2),
                ),
              ],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: AppButton(
              onPressed: () {
                context.push(const LeaveReview());
              },
              child: const Text('Write a Review'),
            ),
          ),
        ],
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final Review review;

  const ReviewCard({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
                ),
              ),
              const SizedBox(width: 10),
              Consumer(builder: (context, ref, child) {
                final user =
                    ref.watch(getUserByIdProvider(id: review.userId ?? ''));
                return Text(
                  user.value?.fullName ?? '',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                );
              }),
              const Spacer(),
              Text(
                '${review.createdAt?.day}/'
                '${review.createdAt?.month}/'
                '${review.createdAt?.year} '
                '${review.createdAt?.hour}:'
                '${review.createdAt?.minute}',
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            review.message ?? '',
            style: TextStyle(color: Colors.grey.shade600),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              for (int i = 0; i < 5; i++)
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
              Text('${review.reviewStar}/5'),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: const Text('Reply'),
              ),
            ],
          ),
          // row of attached image in review
          Row(
            children: [
              for (int i = 0; i < 3; i++)
                Container(
                  margin: const EdgeInsets.only(right: 8),
                  child: Image.network(
                    'https://picsum.photos/200',
                    height: 80,
                    width: 80,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
