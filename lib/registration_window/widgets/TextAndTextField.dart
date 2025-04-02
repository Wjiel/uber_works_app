import 'package:flutter/material.dart';
import 'package:uber_works_app/custom_widgets/Text/CustomTextForPage.dart';
import 'package:uber_works_app/custom_widgets/TextFields/CustomBoxWithText.dart';

class TextAndTextField extends StatelessWidget {
  final String Texting;
  final bool? isPass;
  const TextAndTextField({super.key, required this.Texting, this.isPass});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 9,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: CustomTextForPage(textString: Texting),
        ),
        CustomBoxWithText(
          isSwitchPass: isPass ?? false,
        ),
      ],
    );
  }
}
