import 'package:flutter/material.dart';
import 'package:uber_works_app/login_window/widget/BoxWithText.dart';
import 'package:uber_works_app/login_window/widget/ButtonSign.dart';
import 'package:uber_works_app/login_window/widget/JustText.dart';
import 'package:uber_works_app/login_window/widget/TextForPage.dart';

class LoginWindow extends StatefulWidget {
  const LoginWindow({super.key});

  @override
  State<LoginWindow> createState() => _LoginWindowState();
}

class _LoginWindowState extends State<LoginWindow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 170),
            Center(child: TextForPage(textString: 'Вход', isSwtich: true)),
            SizedBox(height: 45),
            TextForPage(textString: 'Номер телефона:'),
            SizedBox(height: 9),
            BoxWithText(),
            SizedBox(height: 25),
            TextForPage(textString: 'Пароль:'),
            SizedBox(height: 9), 
            BoxWithText(isSwitchPass: true),
            SizedBox(height: 60),
            ButtonSign(InputWords: 'Войти'),
            SizedBox(height: 15),
            ButtonSign(InputWords: 'Назад',Colorchik: true),
            SizedBox(height: 25),
            Center(child: JustText()),
          ],
        ),
      ),
    );
  }
}
