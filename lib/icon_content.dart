import 'package:flutter/material.dart';
import 'constants.dart';

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
        Text(text, style: kLabelTextStyle),
      ],
    );
  }
}
