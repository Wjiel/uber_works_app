import 'package:flutter/material.dart';
import 'package:uber_works_app/colors.dart';

class Hyperlink extends StatelessWidget {
  const Hyperlink({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {}, // Функционал
      child: Text(
        'Отправить еще раз код',
        style: TextStyle(
          color: mediumBlue,
          fontFamily: 'RobotoSlab',
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}