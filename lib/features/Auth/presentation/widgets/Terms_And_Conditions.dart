import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hykaity/core/Utils/Text_Styles.dart';
import 'package:hykaity/features/Auth/presentation/widgets/Custom_CheckBox.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key, required this.onChanged});
  final ValueChanged<bool>onChanged;
  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isTermsAccepted=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30,left: 40,right: 49),
      child: Row(
        children: [
          CustomCheckbox(
            isChecked: isTermsAccepted,
            onChanged: (bool value) {
              isTermsAccepted=value;
              widget.onChanged(value);
              setState(() {});
            },
          ),
          const SizedBox(width: 7,),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال تحديد المربع فإنك توافق على ',
                  style: Styles.w40010
                ),
                TextSpan(
                  text: 'الشروط',
                  style: Styles.w40010.copyWith(
                    color: const Color(0xFFA62714),
                  )
                ),
                TextSpan(
                  text: ' و ',
                  style:Styles.w40010
                ),
                TextSpan(
                  text: 'الأحكام',
                  style: Styles.w40010.copyWith(
                    color: const Color(0xFFA62714),
                  )
                ),
                TextSpan(
                  text: ' الخاصة بنا',
                  style:Styles.w40010
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
