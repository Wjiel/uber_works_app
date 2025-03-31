import 'package:flutter/material.dart';
import 'package:uber_works_app/start_screen/widget/AppBar.dart';
import 'package:uber_works_app/start_screen/widget/BodyView.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBars,
      body: BodyViewS(),
    );
  }
}
