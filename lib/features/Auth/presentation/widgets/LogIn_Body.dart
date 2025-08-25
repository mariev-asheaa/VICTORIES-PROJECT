import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hykaity/core/Utils/Constants.dart';
import 'package:hykaity/core/Utils/Text_Styles.dart';
import 'package:hykaity/features/Auth/presentation/views/SignUp_View.dart';
import 'package:hykaity/features/Auth/presentation/widgets/Auth_Body.dart';
import 'package:hykaity/features/Auth/presentation/widgets/Auth_Header.dart';
import 'package:hykaity/features/Auth/presentation/widgets/Custom_Button.dart';
import 'package:hykaity/features/Auth/presentation/widgets/Password_Field.dart';
import 'package:hykaity/features/Auth/presentation/widgets/Social_Media_Accounts.dart';
import 'package:hykaity/features/Auth/presentation/widgets/Text_Form_Field.dart';
import 'package:hykaity/generated/assets.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final GlobalKey<FormState>key=GlobalKey<FormState>();
  AutovalidateMode autoValidateMode=AutovalidateMode.disabled;
  late String password,email;
  @override
  Widget build(BuildContext context) {
    return AuthBody(
        image: Assets.imagesLogInImage,
        child: SingleChildScrollView(
          child: Form(
            key: key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AuthHeader(),
                SizedBox(height: 19,),
                CustomTextFormField(
                    onSaved: (value){
                      email=value!;
                    },
                    hintText: 'البريد الالكتروني', textInputType: TextInputType.emailAddress, prefixIcon: Icon(Icons.email_outlined)),
                PasswordField(
                  onSaved: (value){
                    password=value!;
                  },
                  hintText: 'كلمة المرور',),
                Padding(
                  padding: const EdgeInsets.only(right:30),
                  child: Text(
                    'نسيت كلمة المرور؟',
                    style: Styles.w40014.copyWith(
                      color: Colors.black.withValues(alpha: 0.35),
                    )
                  ),
                ),
                SocialMediaAccounts(),
                CustomButton(text: 'تسجيل الدخول',
                    onTap: (){
                      if(key.currentState!.validate()){
                        key.currentState!.save();

                         }else{
                        setState(() {
                          autoValidateMode=AutovalidateMode.always;
                        });
                      }
                   }),
                Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'ليس لديك حساب؟ ',
                          style: Styles.w40012.copyWith(
                            color: Colors.black.withValues(alpha: 0.35),
                          )
                        ),
                        TextSpan(
                          text: 'إنشاء حساب',
                          style: Styles.w70012.copyWith(
                            color: kSecondaryColor
                          ),
                            recognizer: TapGestureRecognizer()..onTap=(){
                              Navigator.pushNamed(context, SignupView.routeName);
                            }
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40,)
              ],
            ),
          ),
        )
    );
  }
}
