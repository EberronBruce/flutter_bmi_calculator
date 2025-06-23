import 'package:flutter/material.dart';

const SliderThemeData _kDefaultCustomSliderTheme = SliderThemeData(
  inactiveTrackColor: Color(0xFF8D8E98),
  activeTrackColor: Colors.white,
  thumbColor: Color(0xFFEB1555),
  overlayColor: Color(0x29EB1555), // 0x29 for alpha
  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
  overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
  trackHeight: 4.0, // Example: explicitly set track height
);

class CustomStyledSlider extends StatelessWidget {
  final double value;
  final double min;
  final double max;
  final ValueChanged<double> onChanged; // Callback for value changes
  final SliderThemeData?
  themeData; // Optional: allow overriding the default custom theme

  const CustomStyledSlider({
    super.key,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
    this.themeData, // Make it optional
  });

  @override
  Widget build(BuildContext context) {
    final SliderThemeData effectiveThemeData =
        themeData ?? _kDefaultCustomSliderTheme.copyWith();

    return SliderTheme(
      data: effectiveThemeData,
      child: Slider(value: value, min: min, max: max, onChanged: onChanged),
    );
  }
}
