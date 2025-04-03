import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextMessageCode extends StatefulWidget {
  const TextMessageCode({super.key});

  @override
  State<TextMessageCode> createState() => _TextMessageCodeState();
}

class _TextMessageCodeState extends State<TextMessageCode> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 30,
      children: List.generate(4, (index) => _InkS(customControllerText: _controller))
    );
  }
}

class _InkS extends StatelessWidget {
  final TextEditingController customControllerText;
  final numberFormat = FilteringTextInputFormatter.allow(RegExp(r'[0-9]'));
  final limitLenght = LengthLimitingTextInputFormatter(4);
  _InkS({required this.customControllerText});

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: customControllerText,
        inputFormatters: [numberFormat, limitLenght],
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
