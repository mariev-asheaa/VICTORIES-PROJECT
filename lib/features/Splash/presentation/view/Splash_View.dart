import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hykaity/features/Splash/presentation/widgets/Splash_Body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
static const routeName='Splash';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body:SafeArea(child: SplashBody())
    );
  }
}
