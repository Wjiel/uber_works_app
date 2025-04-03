import 'package:flutter/material.dart';
import 'package:uber_works_app/confirmation_window/widgets/TextMessageCode.dart';

class ConfirmationWindow extends StatelessWidget {
  const ConfirmationWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 177,
          ),
          Align(
            alignment: Alignment.center,
            child: TextMessageCode(),
          )
        ],
      ),
    );
  }
}
