import 'package:flutter/material.dart';
import 'package:uber_works_app/custom_widgets/Text/CustomTextForPage.dart';
import 'package:uber_works_app/custom_widgets/buttons/CustomButtonSign.dart';
import 'package:uber_works_app/registration_screen/widgets/AnimationButton.dart';
import 'package:uber_works_app/registration_screen/widgets/TextAndTextField.dart';



class RegistrationWindow extends StatelessWidget {
  final List<String> _listNameTextString = [
  'Регистрация',
  'ФИО:',
  'Возраст:',
  'Почта:',
  'Номер телефона:',
  'Пароль',
];
  RegistrationWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 170),
            Center(
              child: CustomTextForPage(
                textString: _listNameTextString[0],
                isSwtich: true,
              ),
            ),
            SizedBox(height: 45,),
            Column(
              spacing: 27,
              children: [
                TextAndTextField(
                  Texting: _listNameTextString[1],
                ),
                TextAndTextField(
                  Texting: _listNameTextString[2],
                ),
                TextAndTextField(
                  Texting: _listNameTextString[3],
                ),
                TextAndTextField(
                  Texting: _listNameTextString[4],
                ),
                TextAndTextField(
                  Texting: _listNameTextString[5],
                  isPass: true,
                ),
                AnimationButton(),
              ],
            ),
            SizedBox(height: 60,),
            Column(
              spacing: 15,
              children: [
                CustomButtonSign(inputWords: 'Зарегистрироваться'),
                CustomButtonSign(inputWords: 'Назад', colorchik: true,),
              ],
            ),
            SizedBox(height: 180,)
          ],
        ),
      ),
    );
  }
}
