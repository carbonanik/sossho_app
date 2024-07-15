import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sossho_app/page/auth/set_new_password_page.dart';
import 'package:sossho_app/providers/api_provider.dart';
import 'package:sossho_app/utils/error_as_value.dart';
import 'package:sossho_app/utils/navigation.dart';
import 'package:sossho_app/utils/show_snack_bar.dart';

import '../../widgets/add_text_field.dart';
import '../../widgets/app_button.dart';

class ForgotPasswordPage extends ConsumerStatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  ConsumerState<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends ConsumerState<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController(text: 'shkhnk@gmail.com');

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  void _onConfirmPressed() async {
    context.push(SetNewPasswordPage());
    return;
    if (!_formKey.currentState!.validate()) {
      return;
    }
    final api = ref.read(publicApiProvider);
    final result =
        await api.forgotPassword(email: emailController.text).errorAsValue();
    if (result.hasError == true) {
      if (mounted) {
        showSnackBar(
            context, 'Could not send verification code', Colors.redAccent);
      }
    } else {
      if (mounted) {
        showSnackBar(context, 'Verification code sent', Colors.green);
        context.push(const SetNewPasswordPage());
      }
    }
    // context.push(SetNewPassword());
    // if (_formKey.currentState!.validate()) {
    //   ref.read(forgotPasswordProvider.notifier).verify(
    //         phoneOrEmailController.text,
    //       );
    // }
  }

  @override
  Widget build(BuildContext context) {
    //
    // ref.listen(forgotPasswordProvider, (previous, next) {
    //   if (next.result == ForgotPasswordResult.verificationCodeSent) {
    //     ref.read(forgotPasswordProvider.notifier).stateClear();
    //     context.push(const OtpCodeForResetPasswordPage());
    //   } else if (next.result ==
    //       ForgotPasswordResult.verificationLinkSentViaEmail) {
    //     ref.read(forgotPasswordProvider.notifier).stateClear();
    //     context.push(const VerificationCodeSentViaEmailPage());
    //   }
    // });
    //
    // ref.listen(forgotPasswordErrorProvider, (previous, next) {
    //   if (next != null) {
    //     ref.read(forgotPasswordErrorProvider.notifier).state = null;
    //     showDialog(
    //       context: context,
    //       builder: (context) => BasicErrorDialog(
    //         title: next,
    //       ),
    //     );
    //   }
    // });
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      extendBodyBehindAppBar: true,
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
                    const SizedBox(height: 8),
                    _buildEmailField(),
                    const SizedBox(height: 34),
                    // login button
                    _buildSendButton(),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            )
          ],
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
          // Image.asset(
          //   Assets.images.nagalayLogo.path,
          //   height: 50,
          //   width: 50,
          //   cacheHeight: 50,
          //   cacheWidth: 50,
          // ),
          // const SizedBox(height: 8),
          SizedBox(height: 100.0),
          CircleAvatar(
            radius: 50.0,
            child: Icon(Icons.person, size: 50.0),
          ),
          SizedBox(height: 40.0),
          // const AppTitle(
          //   text: "Forgot Password",
          // ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Forgot Password',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Provide the email address or phone number you signed up with in Nagalay`",
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

  AppTextField _buildEmailField() {
    return AppTextField(
      controller: emailController,
      hintText: "Your email",
      prefixIcon: Icons.email,
    );
  }

  AppButton _buildSendButton() {
    return AppButton(
      onPressed: _onConfirmPressed,
      child: const Text("Send"),
    );
  }
}
