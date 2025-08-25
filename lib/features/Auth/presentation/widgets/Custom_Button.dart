import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hykaity/core/Utils/Constants.dart';
import 'package:hykaity/core/Utils/Text_Styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text,required this.onTap});
  final String text;
  final void Function()?onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 18,right: 30,bottom: 8,top: 20),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 14),
          decoration: ShapeDecoration(
            color: kSecondaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 8,
            children: [
              Text(
                text,
                textAlign: TextAlign.center,
                style: Styles.w70018.copyWith(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
