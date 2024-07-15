import 'package:flutter/material.dart';
import 'package:sossho_app/page/leave_review.dart';
import 'package:sossho_app/utils/navigation.dart';
import 'package:sossho_app/widgets/app_button.dart';

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
                            const Text('107 Reviews'),
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
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => const ReviewCard(),
                    childCount: 10,
                  ),
                ),
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
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=200&d=mp'),
              ),
              const SizedBox(width: 10),
              Text(
                'John Doe',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              const Text('5 hours ago'),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
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
              const Text('4.5'),
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
