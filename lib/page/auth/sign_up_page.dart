import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:sossho_app/page/auth/otp_verify_page.dart';
import 'package:sossho_app/providers/sign_up_provider.dart';
import 'package:sossho_app/utils/navigation.dart';
import 'package:sossho_app/utils/show_snack_bar.dart';
import '../../model/sign_up_request.dart';
import '../../utils/validator.dart';
import '../../widgets/add_password_field.dart';
import '../../widgets/add_text_field.dart';
import '../../widgets/app_button.dart';
import 'login_page.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final formKey = GlobalKey<FormState>();

  final _fullNameController = TextEditingController();
  final _mobileNumberController = TextEditingController();
  final _emailController = TextEditingController();
  final _dateOfBirthController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  String _gender = 'Male';

  @override
  void dispose() {
    _fullNameController.dispose();
    _mobileNumberController.dispose();
    _emailController.dispose();
    _dateOfBirthController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(signUpErrorProvider, (previous, next) {
      if (next != null) {
        showSnackBar(
          context,
          (next as DioException).response?.data?.toString() ?? '',
          Colors.redAccent,
        );
      }
    });
    ref.listen(signUpSuccessProvider, (previous, next) {
      if (next != null) {
        context.push(const LoginPage());
      }
    });
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      extendBodyBehindAppBar: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
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
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            'Fill in your details',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0,
                            ),
                          ),
                        ),
                        const SizedBox(height: 40.0),
                        AppTextField(
                          hintText: 'Full Name',
                          prefixIcon: Icons.person,
                          controller: _fullNameController,
                          validator: Validator.required,
                        ),
                        const SizedBox(height: 16.0),
                        AppTextField(
                          hintText: 'Date of Birth',
                          prefixIcon: Icons.date_range,
                          controller: _dateOfBirthController,
                          validator: Validator.required,
                          readOnly: true,
                          onTap: () async {
                            final selectedDate = await showDatePicker(
                              context: context,
                              initialDate: _dateOfBirthController.text.isEmpty
                                  ? DateTime.now()
                                  : DateFormat('dd/MM/yyyy')
                                      .parse(_dateOfBirthController.text),
                              firstDate: DateTime(1900),
                              lastDate: DateTime.now(),
                            );
                            if (selectedDate != null) {
                              _dateOfBirthController.text =
                                  DateFormat('dd/MM/yyyy').format(selectedDate);
                            }
                          },
                        ),
                        const SizedBox(height: 16.0),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 26.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Theme.of(context).colorScheme.surfaceVariant,
                          ),
                          child: Row(
                            children: [
                              // gender icon
                              const Icon(Icons.male),
                              const SizedBox(width: 10.0),
                              const Text('Gender',
                                  style: TextStyle(fontSize: 16.0)),
                              const SizedBox(width: 26.0),
                              Expanded(
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  value: _gender,
                                  items: const [
                                    DropdownMenuItem<String>(
                                      value: 'Male',
                                      child: Text('Male'),
                                    ),
                                    DropdownMenuItem<String>(
                                      value: 'Female',
                                      child: Text('Female'),
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      _gender = value ?? 'Male';
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        AppTextField(
                          hintText: 'Mobile Number',
                          prefixIcon: Icons.phone_android,
                          controller: _mobileNumberController,
                          validator: Validator.required,
                        ),
                        const SizedBox(height: 16.0),
                        AppTextField(
                          hintText: 'Email',
                          prefixIcon: Icons.email,
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
                        const SizedBox(height: 16.0),
                        AppPasswordField(
                          hintText: 'Confirm Password',
                          prefixIcon: Icons.lock,
                          controller: _confirmPasswordController,
                          validator: (value) {
                            if (value != _passwordController.text) {
                              return 'Password does not match';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 26.0),
                        AppButton(
                          onPressed: () {
                            // if (formKey.currentState!.validate()) {
                            //   ref.read(signUpProvider.notifier).signUp(
                            //         data: SignUpRequest(
                            //           fullName: _fullNameController.text,
                            //           mobile: _mobileNumberController.text,
                            //           email: _emailController.text,
                            //           password: _passwordController.text,
                            //           dateOfBirth: _dateOfBirthController.text,
                            //           gender: _gender.toUpperCase(),
                            //         ),
                            //       );
                            // }
                            context.push(const OtpVerifyPage());
                          },
                          child: const Text('Register'),
                        ),
                        const SizedBox(height: 22.0),
                        InkWell(
                          onTap: () {
                            context.push(const LoginPage());
                          },
                          customBorder: const StadiumBorder(),
                          child: const Text(
                            'Already have an account? Login',
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
