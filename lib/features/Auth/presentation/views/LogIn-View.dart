import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hykaity/features/Auth/presentation/widgets/LogIn_Body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
static const routeName='login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: LoginBody()),
    );
  }
}
