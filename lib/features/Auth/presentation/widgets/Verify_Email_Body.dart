import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hykaity/core/Utils/Constants.dart';
import 'package:hykaity/core/Utils/Text_Styles.dart';
import 'package:hykaity/features/Auth/presentation/widgets/Auth_Body.dart';
import 'package:hykaity/features/Auth/presentation/widgets/Custom_Button.dart';
import 'package:hykaity/features/Auth/presentation/widgets/OtpField.dart';
import 'package:hykaity/generated/assets.dart';

class VerifyEmailBody extends StatelessWidget {
  const VerifyEmailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBody(
        image: Assets.imagesValidateEmail,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:73),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
           children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color(0xFFD5C9E1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child:Icon(Icons.email_outlined,color: kPrimaryColor,size: 24,)
          ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24,bottom: 17),
                    child: Text(
                      'تحقق من بريدك الإلكتروني',
                      style:Styles.w70020.copyWith(
                        color:  const Color(0xFF505050),
                      )
                    ),
                  ),
                  Text(
                    'لقد أرسلنا رمزًا إلى\n yourname@gmail.com',
                    style: Styles.w40014.copyWith(
                      color: const Color(0xFF505050),
                    )
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: OtpField(),
                ),
                  CustomButton(text: 'تأكيد', onTap: (){})
                ],
              ),
        ));
  }
}
