import 'package:flutter/material.dart';
import 'package:uber_works_app/colors.dart';

class Carouselitem extends StatelessWidget {
  final List<Map<String, dynamic>> listString;
  final int index;
  const Carouselitem({super.key, required this.listString, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: listString[index]['image'],
        borderRadius: BorderRadius.circular(24),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: mediumOrange,
            blurRadius: 50,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            width: 242,
            height: 163,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(46),
              boxShadow: <BoxShadow>[
              BoxShadow(
                color: highBlue,
                spreadRadius: 0,
                blurRadius: 116.3,
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 36,
              bottom: 30,
              right: 60
            ),
            child: Text(
              listString[index]['text'],
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'RobotoSerif',
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  shadows: <Shadow>[
                    Shadow(
                      color: Colors.black,
                      blurRadius: 1,
                    ),
                  ]),
                  overflow: TextOverflow.clip,
              maxLines: 4,
            ),
          )
        ],
      ),
    );
  }
}
