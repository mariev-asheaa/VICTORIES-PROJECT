import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hykaity/core/Utils/Text_Styles.dart';
import 'package:hykaity/features/Auth/presentation/widgets/Social_Media_Button.dart';
import 'package:hykaity/generated/assets.dart';

class SocialMediaAccounts extends StatelessWidget {
  const SocialMediaAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: const Color(0xFFB9BCC4),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                    'Or',
                    style:Styles.w40014.copyWith(color:Color(0xFF4B5368),)
                ),
              ),
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: const Color(0xFFB9BCC4),
                ),
              ),
            ],
          ),
        ),
        SocialMediaButton(text: 'Continue with Apple', image: Assets.iconsApple,
          onTap: () {

        },),
        SizedBox(height: 16,),
        SocialMediaButton(text: 'Continue with Google', image: Assets.iconsGoogle,
          onTap: () {

          },),

      ],
    );
  }
}
