import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sossho_app/utils/error_as_value.dart';
import 'package:sossho_app/utils/show_snack_bar.dart';
import '../../../utils/validator.dart';
import '../../../widgets/add_password_field.dart';
import '../../../widgets/app_button.dart';
import '../../providers/api_provider.dart';

class ChangePasswordPage extends ConsumerStatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  ConsumerState<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends ConsumerState<ChangePasswordPage> {
  final _formKey = GlobalKey<FormState>();

  final _oldPasswordController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  void _onSavePressed() async {
    if (_formKey.currentState!.validate()) {
      final api = await ref.read(secureApiProvider.future).errorAsValue();

      final res = await api.value
          ?.changePassword(
            oldPassword: _oldPasswordController.text,
            newPassword: _passwordController.text,
          )
          .errorAsValue();

      if (res?.hasError == true) {
        SchedulerBinding.instance.addPostFrameCallback(
          (timeStamp) {
            if (mounted) {
              showSnackBar(
                  context, "Couldn't change password", Colors.redAccent);
            }
          },
        );
      } else {
        SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
          if (mounted) {
            showSnackBar(
                context, "Password changed successfully", Colors.green);
          }
        });
      }
    }
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
                      // email or phone
                      AppPasswordField(
                        hintText: 'Old Password',
                        prefixIcon: Icons.lock,
                        controller: _oldPasswordController,
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
          // CircleAvatar(
          //   radius: 50.0,
          //   child: Icon(Icons.person, size: 50.0),
          // ),
          // SizedBox(height: 40.0),
          Text(
            "Change Password",
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
      validator: (value) {
        if (value != _passwordController.text) {
          return 'Password does not match';
        }
        return null;
      },
    );
  }

  AppButton _buildSavePassButton() {
    return AppButton(
      onPressed: () => _onSavePressed(),
      child: const Text("Save Password"),
    );
  }
}
