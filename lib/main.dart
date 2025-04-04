import 'package:flutter/material.dart';
import 'package:uber_works_app/confirmation_window/%D0%A1onfirmationWindow.dart';
import 'package:uber_works_app/login_screen/LoginWindow.dart';
import 'package:uber_works_app/registration_screen/RegistrationWindow.dart';
import 'package:uber_works_app/start_screen/StartScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ConfirmationWindow()
    ),
  );
}
