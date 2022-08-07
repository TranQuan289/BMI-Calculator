import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);
  @override
  State<InputPage> createState() => _InputPageState();
}

const hightCalculator = 80.0;
const colorCard = Color(0xFF1D1F33);
const colorBottom = Color(0xFFEA1556);

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "BMI Calculator",
            style: letterStyle(20.0, 'Tiro'),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(colorCard)),
                  Expanded(child: ReusableCard(colorCard))
                ],
              ),
            ),
            Expanded(child: ReusableCard(colorCard)),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(colorCard)),
                  Expanded(child: ReusableCard(colorCard))
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: hightCalculator,
              decoration: BoxDecoration(
                color: colorBottom,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  'Calculate Your BMI',
                  style: letterStyle(20.0, 'Tiro'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  TextStyle letterStyle(double size, String font) =>
      TextStyle(fontSize: size, fontFamily: font);
}

class ReusableCard extends StatelessWidget {
  ReusableCard(this.color);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(5.0)),
      margin: EdgeInsets.all(15.0),
    );
  }
}
