import 'package:flutter/material.dart';
import 'package:uber_works_app/custom_widgets/TextFields/CustomBoxWithText.dart';
import 'package:uber_works_app/custom_widgets/buttons/CustomButtonSign.dart';
import 'package:uber_works_app/login_screen/widget/JustText.dart';
import 'package:uber_works_app/custom_widgets/Text/CustomTextForPage.dart';

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
            Center(child: CustomTextForPage(textString: 'Вход', isSwtich: true)),
            SizedBox(height: 45),
            CustomTextForPage(textString: 'Номер телефона:'),
            SizedBox(height: 9),
            CustomBoxWithText(),
            SizedBox(height: 25),
            CustomTextForPage(textString: 'Пароль:'),
            SizedBox(height: 9), 
            CustomBoxWithText(isSwitchPass: true),
            SizedBox(height: 60),
            CustomButtonSign(inputWords: 'Войти'),
            SizedBox(height: 15),
            CustomButtonSign(inputWords: 'Назад',colorchik: true),
            SizedBox(height: 25),
            Center(child: JustText()),
          ],
        ),
      ),
    );
  }
}
