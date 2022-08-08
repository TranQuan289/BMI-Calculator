import 'package:flutter/material.dart';

class cardColumn extends StatelessWidget {
  cardColumn(this.icon, this.text);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: cardStyle(),
        )
      ],
    );
  }

  TextStyle cardStyle() {
    return TextStyle(
        fontSize: 13.0, color: Color(0xFF8D8E98), fontFamily: 'Tiro');
  }
}
