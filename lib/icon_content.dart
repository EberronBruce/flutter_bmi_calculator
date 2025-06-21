import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
  fontWeight: FontWeight.w500,
);

const iconSize = 80.0;
const sizeBoxHeight = 15.0;

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String text;

  const IconContent({super.key, required this.iconData, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, size: iconSize),
        SizedBox(height: sizeBoxHeight),
        Text(text, style: labelTextStyle),
      ],
    );
  }
}
