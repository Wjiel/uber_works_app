import 'package:flutter/material.dart';
import 'package:uber_works_app/login_window/LoginWindow.dart';
import 'package:uber_works_app/registration_window/RegistrationWindow.dart';
import 'package:uber_works_app/start_screen/StartScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistrationWindow()
    ),
  );
}
