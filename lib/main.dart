import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hykaity/core/Helper_Functions/Routes.dart';
import 'package:hykaity/core/Services/Shared-Prefrence_Singleton.dart';
import 'package:hykaity/features/Splash/presentation/view/Splash_View.dart';
import 'package:hykaity/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  runApp(const MyStory());
}

class MyStory extends StatelessWidget {
  const MyStory({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
   home: SplashView(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      locale: Locale('ar'),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGeneratedRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
