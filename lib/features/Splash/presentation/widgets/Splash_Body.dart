import 'package:flutter/cupertino.dart';
import 'package:hykaity/features/Auth/presentation/views/LogIn-View.dart';
import 'package:hykaity/features/Onboarding/presentation/views/Onboarding_View.dart';
import 'package:hykaity/generated/assets.dart';

import '../../../../core/Services/Shared-Prefrence_Singleton.dart';
import '../../../../core/Utils/Constants.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    navigateToOnboarding();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(Assets.imagesSplash));
  }

  void navigateToOnboarding() {
    bool isOnboardingSeen= Prefs.getBool(kIsOnboardingSeen);
    Future.delayed(Duration(seconds: 3),(){
      if(isOnboardingSeen)
      {
       Navigator.pushReplacementNamed(context, LoginView.routeName);
      }
      else{
       Navigator.pushReplacementNamed(context, OnboardingView.routeName);
      }
    });
  }
}
