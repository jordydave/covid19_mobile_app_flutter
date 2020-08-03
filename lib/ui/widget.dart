import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 22),
      children: <TextSpan>[
        TextSpan(
            text: 'Periksa',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontFamily: 'Montserrat')),
        TextSpan(
            text: 'Covid - 19',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.red,
                fontFamily: 'Montserrat')),
      ],
    ),
  );
}
