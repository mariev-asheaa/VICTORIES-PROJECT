import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hykaity/core/Services/Shared-Prefrence_Singleton.dart';
import 'package:hykaity/core/Utils/Constants.dart';
import 'package:hykaity/core/Utils/Text_Styles.dart';
import 'package:hykaity/features/Auth/presentation/views/LogIn-View.dart';
import 'package:hykaity/features/Onboarding/models/PageViewItem_Model.dart';


class OnboardingPageviewItem extends StatelessWidget {
  const OnboardingPageviewItem({super.key, required this.pageViewModel});
  final PageViewModel pageViewModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: (){
            Prefs.setBool(kIsOnboardingSeen, true);
             Navigator.pushReplacementNamed(context, LoginView.routeName);
          },
          child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                  'تخط',
                  style:Styles.w70018.copyWith(
                      color: kSecondaryColor
                  )
              )
          ),
        ),
        Center(
            child: Image.asset(pageViewModel.backGroundImage,fit: BoxFit.fill,)
        ),
        Center(child: Text(pageViewModel.title,style: Styles.w70024,)),
        SizedBox(height: 27,),
        Center(
          child: Text(
            pageViewModel.subTitle, style: Styles.w40016.copyWith(
              color: Colors.black.withValues(alpha: 0.36),
            )
          ),
        ),
      ],
    );
  }
}
