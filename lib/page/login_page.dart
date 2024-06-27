import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sossho_app/page/home_page.dart';
import 'package:sossho_app/page/sign_up_page.dart';
import 'package:sossho_app/utils/navigation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sossho_app/utils/validator.dart';

import '../providers/login_provider.dart';
import '../utils/show_snack_bar.dart';
import '../widgets/add_password_field.dart';
import '../widgets/add_text_field.dart';
import '../widgets/app_button.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();


  @override
  void initState() {
    var defaultLogin = true;
    if (defaultLogin) {
      _emailController.text = 'amanullhazoha@gmail.com';
      _passwordController.text = 'Z123456@a';
    }
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(loginErrorProvider, (previous, next) {
      if (next != null) {
        showSnackBar(
          context,
          (next as DioException).response?.data?.toString() ?? '',
          Colors.redAccent,
        );
      }
    });
    ref.listen(loginSuccessProvider, (previous, next) {
      if (next != null) {
        context.push(const HomePage());
      }
    });
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 100.0),
                        const CircleAvatar(
                          radius: 50.0,
                          child: Icon(Icons.person, size: 50.0),
                        ),
                        const SizedBox(height: 40.0),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            'Welcome to Sossho',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0,
                            ),
                          ),
                        ),
                        const SizedBox(height: 48.0),
                        AppTextField(
                          hintText: 'Email',
                          prefixIcon: Icons.phone,
                          controller: _emailController,
                          validator: Validator.required,
                        ),
                        const SizedBox(height: 16.0),
                        AppPasswordField(
                          hintText: 'Password',
                          prefixIcon: Icons.lock,
                          controller: _passwordController,
                          validator: Validator.required,
                        ),
                        const SizedBox(height: 4.0),
                        //forgot password
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {},
                              customBorder: const StadiumBorder(),
                              child: const Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Forgot Password?',
                                  // style: TextStyle(color: actionBlue),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        AppButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              ref.read(loginProvider.notifier).login(
                                email: _emailController.text,
                                password: _passwordController.text,
                              );
                            }
                          },
                          child: const Text('Login'),
                        ),
                        const SizedBox(height: 22.0),
                        InkWell(
                          onTap: () {
                            context.push(const SignUpPage());
                          },
                          customBorder: const StadiumBorder(),
                          child: const Text(
                            'Don\'t have an account? Sign Up.',
                          ),
                        ),
                        const SizedBox(height: 22.0),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
