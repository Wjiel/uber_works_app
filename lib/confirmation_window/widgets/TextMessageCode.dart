import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextMessageCode extends StatefulWidget {
  const TextMessageCode({super.key});

  @override
  State<TextMessageCode> createState() => _TextMessageCodeState();
}

class _TextMessageCodeState extends State<TextMessageCode> {
  final List<TextEditingController> _controller = List.generate(4, (index) => TextEditingController());

  @override
  void dispose() {
    for (var controller in _controller) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
        spacing: 30,
        children: List.generate(
            4, (index) => _InkS(customControllerText: _controller[index])));
  }
}

class _InkS extends StatelessWidget {
  final TextEditingController customControllerText;
  final numberFormat = FilteringTextInputFormatter.allow(RegExp(r'[0-9]'));
  final limitLenght = LengthLimitingTextInputFormatter(1);
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
        textAlign: TextAlign.center,
        controller: customControllerText,
        inputFormatters: [numberFormat, limitLenght],
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
