import 'package:bmi/page/result_page.dart';
import 'package:flutter/material.dart';
import 'page/input_page.dart';

void main() {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.light(primary: Color(0xFF090C22)),
        scaffoldBackgroundColor: Color(0xFF090C22),
      ),
      home: InputPage(),
    );
  }
}
