import 'package:flutter/material.dart';
import 'package:uber_works_app/start_screen/widget/Carousel.dart';
import 'package:uber_works_app/start_screen/widget/SignInUp.dart';

class BodyViewScreen extends StatelessWidget {
  const BodyViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 45),
        Carousel(),
        SignInUp(),
      ],
    );
  }
}