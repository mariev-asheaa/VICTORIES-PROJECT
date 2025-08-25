import 'package:flutter/material.dart';
import 'package:hykaity/core/Utils/Constants.dart';

class OtpField extends StatefulWidget {
  const OtpField({super.key});

  @override
  State<OtpField> createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  final int otpLength = 4;

  late List<TextEditingController> controllers;
  late List<FocusNode> focusNodes;

  @override
  void initState() {
    super.initState();
    controllers = List.generate(otpLength, (_) => TextEditingController());
    focusNodes = List.generate(otpLength, (_) => FocusNode());
  }

  @override
  void dispose() {
    for (final c in controllers) {
      c.dispose();
    }
    for (final f in focusNodes) {
      f.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(otpLength, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: SizedBox(
            width: 50,
            height: 50,
            child: TextFormField(
              controller: controllers[index],
              focusNode: focusNodes[index],
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kSecondaryColor
              ),
              keyboardType: TextInputType.number,
              maxLength: 1,
              decoration: InputDecoration(
                counterText: "",
                filled: true,
                fillColor: Colors.white,
                border: buildBorder(),
                enabledBorder: buildBorder(),
                focusedBorder: buildBorder(),
              ),
              onChanged: (value) {
                if (value.isNotEmpty) {
                  // Move to next field
                  if (index + 1 < otpLength) {
                    FocusScope.of(context).requestFocus(focusNodes[index + 1]);
                  } else {
                    FocusScope.of(context).unfocus();
                  }
                } else {
                  // If user deletes, go back
                  if (index > 0) {
                    FocusScope.of(context).requestFocus(focusNodes[index - 1]);
                  }
                }
              },
            ),
          ),
        );
      }),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        width: 1,
        color: kSecondaryColor
      ),
    );
  }
}
