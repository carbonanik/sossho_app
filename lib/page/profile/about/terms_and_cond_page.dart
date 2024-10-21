import 'package:flutter/material.dart';

class TermsAndCondPage extends StatelessWidget {
  const TermsAndCondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Terms & Conditions')),
      body: const Column(
        children: [
          Text('Terms & Conditions Page'),
        ],
      ),
    );
  }
}
