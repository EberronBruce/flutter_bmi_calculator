import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ThemeData.dark().colorScheme.copyWith(
          primary: Color(0xFF0A0E21),
          surface: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        // appBarTheme: AppBarTheme(
        //   backgroundColor: Color(0xFF0A0E21),
        //   titleTextStyle: TextStyle(color: Colors.white),
        //   iconTheme: IconThemeData(color: Colors.white),
        // ),
      ),
      home: InputPage(),
    );
  }
}
