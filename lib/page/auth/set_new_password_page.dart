import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sossho_app/widgets/add_text_field.dart';
import '../../utils/validator.dart';
import '../../widgets/add_password_field.dart';
import '../../widgets/app_button.dart';
import 'login_page.dart';

class SetNewPasswordPage extends ConsumerStatefulWidget {
  const SetNewPasswordPage({super.key});

  @override
  ConsumerState<SetNewPasswordPage> createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends ConsumerState<SetNewPasswordPage> {
  bool showPassword = false;
  bool showConfirmPassword = false;

  final _formKey = GlobalKey<FormState>();

  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  void _onSavePressed(BuildContext context) {
    // if (_formKey.currentState!.validate()) {
    //   ref.read(forgotPasswordProvider.notifier).resetPasswordByPhone(
    //         passwordController.text,
    //       );
    // }
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ref.listen(
    //   forgotPasswordProvider,
    //   (previous, next) {
    //     if (next.result == ForgotPasswordResult.successful) {
    //       ref.read(forgotPasswordProvider.notifier).stateClear();
    //
    //       context.push(const LoginPage());
    //     }
    //   },
    // );

    // ref.listen(setNewPasswordErrorProvider, (previous, next) {
    //   if (next != null) {
    //     ref.read(setNewPasswordErrorProvider.notifier).state = null;
    //
    //     showDialog(
    //       context: context,
    //       builder: (context) => BasicErrorDialog(title: next),
    //     );
    //   }
    // });
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              // login title
              _buildLoginTitle(context),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      const SizedBox(height: 16),
                      AppTextField(
                        hintText: 'New Password',
                        prefixIcon: Icons.lock,
                        controller: _passwordController,
                        validator: Validator.required,
                      ),
                      const SizedBox(height: 16),
                      _buildPassField(),
                      const SizedBox(height: 16),
                      _buildConfPassField(),
                      const SizedBox(height: 12),
                      // forgot your password?
                      const SizedBox(height: 24),
                      // login button
                      _buildSavePassButton(),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoginTitle(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 100.0),
          CircleAvatar(
            radius: 50.0,
            child: Icon(Icons.person, size: 50.0),
          ),
          SizedBox(height: 40.0),
          Text(
            "New password",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              // color: greyColor700,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Please set your new password",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              // color: greyColor500,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  Widget _buildPassField() {
    return AppPasswordField(
      hintText: 'New Password',
      prefixIcon: Icons.lock,
      controller: _passwordController,
      validator: Validator.required,
    );
  }

  Widget _buildConfPassField() {
    return AppPasswordField(
      hintText: 'Confirm Password',
      prefixIcon: Icons.lock,
      controller: _confirmPasswordController,
      validator: Validator.required,
    );
  }

  AppButton _buildSavePassButton() {
    return AppButton(
      onPressed: () => _onSavePressed(context),
      child: const Text("Save Password"),
    );
  }
}
