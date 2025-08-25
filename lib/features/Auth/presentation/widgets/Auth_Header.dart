import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hykaity/core/Utils/Constants.dart';
import 'package:hykaity/core/Utils/Text_Styles.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
                'أهلاً بك! ',
                textAlign: TextAlign.center,
                style: Styles.w70040.copyWith(color: kSecondaryColor)
            ),
          ),
          Text(
              'سجل دخولك الأن',
              textAlign: TextAlign.center,
              style: Styles.w40016.copyWith(
                color: Colors.black.withValues(alpha: 0.35),
              )
          ),
        ],
      ),
    );
  }
}
