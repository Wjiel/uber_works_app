import 'package:flutter/material.dart';
import 'package:uber_works_app/colors.dart';

AppBar appBar = AppBar(
  backgroundColor: Colors.white,
  title: RichText(
    text: TextSpan(
      text: 'cантехник.',
      style: TextStyle(
        color: highBlue,
        fontSize: 25,
        fontFamily: 'RobotoSerif',
        fontWeight: FontWeight.w600,
      ),
      children: <TextSpan>[
        TextSpan(
          text: 'ру',
          style: TextStyle(
            color: orange,
            fontSize: 25,
            fontFamily: 'RobotoSerif',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  ),
);
