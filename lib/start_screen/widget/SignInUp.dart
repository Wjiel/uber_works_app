import 'package:flutter/material.dart';
import 'package:uber_works_app/colors.dart';

class SignInUp extends StatelessWidget {
  const SignInUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 45,
      ),
      child: Column(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {}, // Код
            child: Ink(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10.5),
              decoration: BoxDecoration(
                  color: highBlue, borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  'Войти',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'RobotoSlab',
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {}, // Код
            child: Ink(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10.5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: highBlue,
                    width: 3,
                  )),
              child: Center(
                child: Text(
                  'Зарегистрироваться',
                  style: TextStyle(
                      color: highBlue,
                      fontFamily: 'RobotoSlab',
                      fontSize: 18,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'или',
            style: TextStyle(
                color: darkSign,
                fontFamily: 'RobotoSlab',
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 40,
            children: [
              _microItem(
                strigImage: 'assets/images/yaPNG.png',
              ),
              _microItem(
                strigImage: 'assets/images/vkPNG.png',
              ),
              _microItem(
                strigImage: 'assets/images/gosPNG.png',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _microItem extends StatelessWidget {
  final String strigImage;
  const _microItem({required this.strigImage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {},
      child: Ink(
        padding: const EdgeInsets.symmetric(vertical: 12.5, horizontal: 12.5),
        decoration: BoxDecoration(
          color: const Color(0x3DDDD3B7),
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          strigImage,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}
