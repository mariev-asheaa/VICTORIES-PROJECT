import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hykaity/core/Utils/Text_Styles.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({super.key, required this.text, required this.image,required this.onTap});

  final String text,image;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 44,
          padding: const EdgeInsets.all(10),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                strokeAlign: BorderSide.strokeAlignCenter,
                color: const Color(0xFFB9BCC4),
              ),
              borderRadius: BorderRadius.circular(37),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    text,
                    textAlign: TextAlign.center,
                    style:Styles.w40014
                ),
                SizedBox(width: 4,),
                Image.asset(image,height: 26,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
