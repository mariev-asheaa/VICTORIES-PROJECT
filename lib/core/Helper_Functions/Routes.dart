import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hykaity/features/Auth/presentation/views/LogIn-View.dart';
import 'package:hykaity/features/Auth/presentation/views/SignUp_View.dart';
import 'package:hykaity/features/Auth/presentation/views/Verify_Email_View.dart';
import 'package:hykaity/features/Onboarding/presentation/views/Onboarding_View.dart';
import 'package:hykaity/features/Splash/presentation/view/Splash_View.dart';

Route<dynamic>onGeneratedRoute(RouteSettings settings)
{
  switch(settings.name)
  {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context)=>SplashView());

    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (context)=>OnboardingView());

    case LoginView.routeName:
      return MaterialPageRoute(builder: (context)=>LoginView());

    case SignupView.routeName:
      return MaterialPageRoute(builder: (context)=>SignupView());

    case VerifyEmailView.routeName:
      return MaterialPageRoute(builder: (context)=>VerifyEmailView());

    default:
      return MaterialPageRoute(builder: (context)=>Scaffold());
  }
}