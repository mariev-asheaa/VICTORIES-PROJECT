import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hykaity/features/Auth/presentation/widgets/SignUp_Body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const routeName='signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SignupBody()),
    );
  }
}
