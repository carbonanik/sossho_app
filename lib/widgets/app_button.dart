import 'package:flutter/material.dart';
import 'package:sossho_app/utils/colors.dart';


class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final Color? backgroundColor;

  const AppButton({
    super.key,
    this.onPressed,
    this.child,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
          const Size(double.infinity, 46),
        ),
        backgroundColor: MaterialStateProperty.all(backgroundColor ?? accentColor),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
      child: child,
    );
  }
}
