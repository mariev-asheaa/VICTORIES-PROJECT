import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hykaity/features/Auth/presentation/widgets/Verify_Email_Body.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({super.key});
  static const routeName='verify';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: VerifyEmailBody()),
    );
  }
}
