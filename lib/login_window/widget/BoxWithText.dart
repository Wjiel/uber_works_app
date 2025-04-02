import 'package:flutter/material.dart';

class BoxWithText extends StatefulWidget {
  final bool? isSwitchPass;
  const BoxWithText({super.key, this.isSwitchPass});


  @override
  State<BoxWithText> createState() => _BoxWithTextState();
}

class _BoxWithTextState extends State<BoxWithText> {
  final controllerText = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: EdgeInsets.symmetric(
        vertical: 1,
      ),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        obscureText: widget.isSwitchPass ?? false,
        controller: controllerText,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
        ),
      ),
    );
  }
}
