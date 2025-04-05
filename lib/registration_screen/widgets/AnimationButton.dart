import 'package:flutter/material.dart';
import 'package:uber_works_app/colors.dart';

class AnimationButton extends StatefulWidget {
  const AnimationButton({super.key});

  @override
  State<AnimationButton> createState() => _AnimationButtonState();
}

class _AnimationButtonState extends State<AnimationButton> {
  late bool isSwitching; 
  @override void initState() {
    isSwitching = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size? _windowScreen = MediaQuery.of(context).size;
    return Ink(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          AnimatedAlign(
              alignment: isSwitching ? Alignment.centerRight : Alignment.centerLeft,
              duration: Duration(milliseconds: 200),
              curve: Curves.easeIn,
              child: Ink(
                height: 50,
                width:  _windowScreen!.width / 2.1,
                decoration: BoxDecoration(
                  color: isSwitching ? highBlue :  orangeButton,
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkResponse(
                  onTap: () {
                    return setState(() {
                      isSwitching = false;
                    });
                  },
                  child: Text(
                    'Житель',
                    style: TextStyle(
                      color: isSwitching ? Colors.black : Colors.white,
                      fontSize: 18,
                      fontFamily: 'RobotoSlab',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                InkResponse(
                  onTap: () {
                    return setState(() {
                      isSwitching = true;
                    });
                  },
                  child: Text(
                    'Сантехник',
                    style: TextStyle(
                      color: isSwitching ? Colors.white : Colors.black,
                      fontSize: 18,
                      fontFamily: 'RobotoSlab',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
    
        ],
      )
    );
  }
}