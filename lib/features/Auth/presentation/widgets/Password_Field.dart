import 'package:flutter/material.dart';
import 'package:hykaity/features/Auth/presentation/widgets/Text_Form_Field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    this.onSaved, required this.hintText,
  });

  final void Function(String?)? onSaved;
 final String hintText;
  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(

      obscureText: obscureText,
      onSaved: widget.onSaved,
      suffixIcon: GestureDetector(
        onTap: () {
          obscureText = !obscureText;
          setState(() {});
        },
        child: obscureText
            ? const Icon(
          Icons.remove_red_eye,
          color: Color(0xffC9CECF),
        )
            : const Icon(
          Icons.visibility_off,
          color: Color(0xffC9CECF),
        ),
      ),
      hintText: widget.hintText,
      textInputType: TextInputType.visiblePassword,
      prefixIcon: Icon(Icons.lock_outline),
    );
  }
}