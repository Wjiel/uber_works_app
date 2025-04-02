import 'package:flutter/material.dart';
import 'package:uber_works_app/colors.dart';

class ButtonSign extends StatelessWidget {
  final String InputWords;
  final bool? Colorchik;
  const ButtonSign({super.key, required this.InputWords, this.Colorchik});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {}, // Код
      child: Ink(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: Colorchik ?? false ? lowOrange : highBlue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            InputWords,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'RobotoSlab',
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
