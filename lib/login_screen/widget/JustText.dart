import 'package:flutter/material.dart';
import 'package:uber_works_app/colors.dart';

class JustText extends StatelessWidget {
  const JustText({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        'Забыли ваш пароль?',
        style: TextStyle(
          color: mediumBlue,
          fontSize: 18,
          fontFamily: 'RobotoSlab',
          fontWeight: FontWeight.w500
        ),
      ),
    );
  }
}