import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String text;
  final iconSize = 80.0;
  const IconContent({super.key, required this.iconData, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, size: iconSize),
        SizedBox(height: 15.0),
        Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
