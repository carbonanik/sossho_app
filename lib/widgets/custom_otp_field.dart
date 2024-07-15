import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomOtp extends StatefulWidget {
  final void Function(String value)? onChange;
  final int numberOfFields;

  const CustomOtp({
    super.key,
    this.onChange,
    this.numberOfFields = 6,
  });

  @override
  State<CustomOtp> createState() => _CustomOtpState();
}

class _CustomOtpState extends State<CustomOtp> {
  late List<String?> values = List.filled(widget.numberOfFields, null);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildPinForm(context),
      ],
    );
  }

  Form _buildPinForm(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          widget.numberOfFields,
          (index) => _buildPinField(context, index),
        ),
      ),
    );
  }

  SizedBox _buildPinField(BuildContext context, int index) {
    return SizedBox(
      height: 50,
      width: 50,
      child: TextFormField(
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            // color: greyColor400,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          filled: true,
          // fillColor: secondaryColor100,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          errorStyle: TextStyle(
            color: Theme.of(context).colorScheme.error,
            fontWeight: FontWeight.bold,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 2,
            ),
          ),
        ),
        style: Theme.of(context).textTheme.titleLarge,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        textAlign: TextAlign.center,
        onChanged: (value) {
          if (value.length == 1) {
            values[index] = value;
            widget.onChange
                ?.call(values.where((element) => element != null).join(''));
            if (index < widget.numberOfFields - 1) {
              FocusScope.of(context).nextFocus();
            } else {
              FocusScope.of(context).unfocus();
            }
          }
        },
      ),
    );
  }
}
