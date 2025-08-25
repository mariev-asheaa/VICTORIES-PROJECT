import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hykaity/features/Onboarding/presentation/widgets/Onboarding_Body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  static const routeName='Onboarding';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: OnboardingBody()),
    );
  }
}


