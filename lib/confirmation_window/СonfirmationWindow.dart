import 'package:flutter/material.dart';
import 'package:uber_works_app/confirmation_window/widgets/Hyperlink.dart';
import 'package:uber_works_app/confirmation_window/widgets/TextMessageCode.dart';
import 'package:uber_works_app/custom_widgets/Text/CustomTextForPage.dart';
import 'package:uber_works_app/custom_widgets/buttons/CustomButtonSign.dart';

class ConfirmationWindow extends StatelessWidget {
  const ConfirmationWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: ListView(
          children: [
            SizedBox(height: 177),
            Center(
              child: CustomTextForPage(
                textString: 'Введите код из смс ',
                isSwtich: true,
              ),
            ),
            SizedBox(height: 80,),
            TextMessageCode(),
            SizedBox(
              height: 60,
            ),
            CustomButtonSign(inputWords: 'Подтвердить'),
            SizedBox(
              height: 20,
            ),
            CustomButtonSign(
              inputWords: 'Назад',
              colorchik: true,
            ),
            SizedBox(
              height: 27,
            ),
            Center(child: Hyperlink())
          ],
        ),
      ),
    );
  }
}
