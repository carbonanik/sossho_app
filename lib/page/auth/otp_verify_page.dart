import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pinput/pinput.dart';

import '../../widgets/app_button.dart';

class OtpVerifyPage extends ConsumerStatefulWidget {
  const OtpVerifyPage({super.key});

  @override
  ConsumerState<OtpVerifyPage> createState() => _OtpVerifyPageState();
}

class _OtpVerifyPageState extends ConsumerState<OtpVerifyPage> {
  String smsCode = "";

  void _onConfirmPressed() {
    if (smsCode.isEmpty) return;
    if (smsCode.length != 6) return;
    // ref.read(registerAccountProvider.notifier).matchVerificationCode(smsCode);
  }

  late final Timer timer;
  int secondsLeft = 60;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsLeft > 0) {
        setState(() {
          secondsLeft--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // ref.listen(
    //   registerAccountProvider,
    //       (previous, next) {
    //     if (next.result == RegisterAccountResult.successful) {
    //       ref.read(registerAccountProvider.notifier).stateClear();
    //
    //       context.push(const LoginPage());
    //     }
    //   },
    // );

    // ref.listen(registerAccountProvider, (previous, next) {
    //   if (next.errorMessage != null) {
    //     ref.read(registerAccountProvider.notifier).stateClear();
    //
    //     showDialog(
    //       context: context,
    //       builder: (context) => BasicErrorDialog(title: next.errorMessage!),
    //     );
    //   }
    // });

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            _buildBody(context),
            _buildLoading(),
          ],
        ),
      ),
    );
  }

  Positioned _buildBody(BuildContext context) {
    return Positioned.fill(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            // login title
            _buildLoginTitle(context),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // email or phone
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Provide your code",
                      style: TextStyle(
                        // color: greyColor600,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  _buildOtpField(context),
                  const SizedBox(height: 12),
                  // forgot your password?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${(secondsLeft / 60).toInt()} min ${secondsLeft % 60} sec",
                        style: const TextStyle(
                          // color: greyColor600,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      const Text(
                        "Resend code",
                        style: TextStyle(
                          // color: greyColor400,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  // login button
                  _buildConfirmButton(),
                  const SizedBox(height: 16),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Positioned _buildLoading() {
    return Positioned.fill(
      child: Consumer(
        builder: (context, ref, child) {
          final loading = false;//ref.watch(registerLoadingProvider);
          return loading
              ? Container(
            color: Colors.black26,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          )
              : const SizedBox();
        },
      ),
    );
  }

  Widget _buildLoginTitle(BuildContext context) {
    // final phoneNumber = ref
    //     .read(registerAccountProvider.notifier)
    //     .registrationData
    //     ?.primaryNumber;
    final lastTwoDigits = '89';//phoneNumber?.substring(phoneNumber.length - 2);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
          const SizedBox(height: 40.0),
          const CircleAvatar(
            radius: 50.0,
            child: Icon(Icons.person, size: 50.0),
          ),
          const SizedBox(height: 40.0),
          const Text(
            "OTP CODE",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              // color: greyColor700,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Please provide the code sent to your contact number*********$lastTwoDigits",
            style: const TextStyle(
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

  Widget _buildOtpField(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // width = width - 32;
    // width = width / 6 - 8;
    // return CustomOtp(
    //   onChange: (values) {
    //     smsCode = values;
    //   },
    // );
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Pinput(
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      validator: (s) {
        return s == '2222' ? null : 'Pin is incorrect';
      },
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      onCompleted: (pin) => print(pin),
    );
  }

  AppButton _buildConfirmButton() {
    return AppButton(
      onPressed: _onConfirmPressed,
      child: const Text("Confirm"),
      // enabled: secondsLeft != 0,
    );
  }
}
