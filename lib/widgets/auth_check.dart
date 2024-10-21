import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sossho_app/utils/navigation.dart';

import '../page/auth/login_page.dart';
import '../providers/user_profile_provider.dart';
import 'app_button.dart';

class AuthCheck extends StatelessWidget {
  final Widget child;

  const AuthCheck({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final isLoggedIn = ref.watch(isLoggedInProvider);
        return isLoggedIn.when(
          data: (data) {
            return child;
          },
          error: (error, stackTrace) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Please login to continue",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    AppButton(
                      onPressed: () {
                        context.push(const LoginPage());
                      },
                      child: const Text('Login'),
                    ),
                  ],
                ),
              ),
            );
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        );
      },
    );
  }
}
