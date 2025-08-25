import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hykaity/core/Utils/Text_Styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.hintText, required this.textInputType,this.suffixIcon,
        this.onSaved,
        this.obscureText = false,required this.prefixIcon});
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final Widget prefixIcon;
  final void Function(String?)? onSaved;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21,right: 33,bottom: 16),
      child: TextFormField(
        obscureText: obscureText,
        onSaved: onSaved,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'هذا الحقل مطلوب';
          }
          return null;
        },
        keyboardType: textInputType,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          suffixIconColor: Color(0xffB1ACAC),
          prefixIconColor:  Color(0xffB1ACAC),
          hintStyle: Styles.w40014.copyWith(
            color: Colors.black.withValues(alpha: 0.45),
          ),
          hintText: hintText,
          filled: true,
          fillColor: const Color(0xFFFCF5F5),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(20),
    );
  }
}