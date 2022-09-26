import 'package:bmi/constains.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class bottomButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const bottomButton(this.onTap, this.text);
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: kHightCalculator,
        decoration: const BoxDecoration(
          color: kColorBottomAndSlider,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: letterStyle(20.0, 'Tiro'),
          ),
        ),
      ),
    );
  }
}
