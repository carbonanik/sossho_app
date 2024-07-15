import 'package:flutter/material.dart';
import 'package:sossho_app/utils/navigation.dart';
import 'package:sossho_app/widgets/common_app_bar.dart';

import '../widgets/app_button.dart';

class LeaveReview extends StatelessWidget {
  const LeaveReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Leave Review'),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  // simple product view
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      // product image
                      Container(
                        height: 80,
                        width: 80,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1523275335684-37898b6baf30?q=80&w=1999&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      // product info
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Product Name',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Product Price'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(),
                  const SizedBox(height: 20),
                  const Text(
                    'How was your order?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Divider(),
                  // rating stars
                  const SizedBox(height: 20),
                  const Text('Your overall rating:'),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 5; i++)
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 40,
                        ),
                    ],
                  ),
                  // review text field
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Add detailed review:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Write your review here',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                        ),
                        maxLines: 10,
                        minLines: 4,
                      ),
                      InkWell(
                        onTap: () {},
                        customBorder: const StadiumBorder(),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            //add photos
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_a_photo,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            // submit button
                            Text(
                              'Add Photos',
                              style: TextStyle(
                                fontSize: 16,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
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
            child: Row(
              children: [
                Expanded(
                  child: AppButton(
                    onPressed: () {
                    },
                    backgroundColor: Colors.grey.shade300,
                    foregroundColor: Colors.black,
                    child: const Text('Cancel'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: AppButton(
                    onPressed: () {
                    },
                    child: const Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
