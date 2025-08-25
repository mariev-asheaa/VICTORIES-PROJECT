import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hykaity/core/Utils/Error_Bar.dart';
import 'package:hykaity/features/Auth/presentation/views/Verify_Email_View.dart';
import 'package:hykaity/features/Auth/presentation/widgets/Auth_Body.dart';
import 'package:hykaity/features/Auth/presentation/widgets/Auth_Header.dart';
import 'package:hykaity/features/Auth/presentation/widgets/Custom_Button.dart';
import 'package:hykaity/features/Auth/presentation/widgets/Password_Field.dart';
import 'package:hykaity/features/Auth/presentation/widgets/Terms_And_Conditions.dart';
import 'package:hykaity/features/Auth/presentation/widgets/Text_Form_Field.dart';
import 'package:hykaity/generated/assets.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  late bool isTermsAccepted=false;
  final GlobalKey<FormState>key=GlobalKey<FormState>();
  AutovalidateMode autoValidateMode=AutovalidateMode.disabled;
  late String userName,password,email;
  @override
  Widget build(BuildContext context) {
    return AuthBody(
        image: Assets.imagesLogInImage,
        child: SingleChildScrollView(
          child: Form(
            key: key,
            child: Column(
                  children: [
                    AuthHeader(),
                    SizedBox(height: 19,),
                    CustomTextFormField(hintText: 'الأســـــــم',
                        textInputType: TextInputType.name,
                        prefixIcon: Icon(Icons.person_outline),
                      onSaved: (value){
                        userName=value!;
                      },
                    ),
                    CustomTextFormField(hintText: 'البريد الالكتروني',
                      textInputType: TextInputType.emailAddress,
                        prefixIcon: Icon(Icons.email_outlined),
                      onSaved: (value){
                        email=value!;
                      },
                    ),
                    PasswordField(hintText: 'كلمة المرور',
                      onSaved: (value){
                        password=value!;
                      },
                    ),
                    PasswordField(hintText: 'تأكيد كلمة المرور',
                      onSaved: (value){
                        password=value!;
                      },
                    ),
                    TermsAndConditions(
                        onChanged: (bool value) {
                          isTermsAccepted=value;
                        }
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: CustomButton(text: 'إنشئ حسابك', onTap: () {
                        if(key.currentState!.validate()){
                          key.currentState!.save();
                          if(isTermsAccepted){
                          Navigator.pushNamed(context, VerifyEmailView.routeName);
                          }
                          else{
                            showBar(context, 'يجب الموافقه على الشروط و الاحكام');
                          }
                        }else{
                          setState(() {
                            autoValidateMode=AutovalidateMode.always;
                          });
                        }
                      },),
                    ),
                  ],
                ),
          ),
        ));
  }
}
