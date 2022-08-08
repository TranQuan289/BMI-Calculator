import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  Expanded(
                    child: ReusableCard(
                      colorCard,
                      cardColumn(FontAwesomeIcons.mars, "MALE"),
                    ),
                  ),
                  Expanded(
                      child: ReusableCard(colorCard,
                          cardColumn(FontAwesomeIcons.venus, "FEMALE")))
                ],
              ),
            ),
            Expanded(child: ReusableCard(colorCard, SizedBox.shrink())),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(colorCard, SizedBox.shrink())),
                  Expanded(child: ReusableCard(colorCard, SizedBox.shrink()))
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
          style: TextStyle(
              fontSize: 13.0, color: Color(0xFF8D8E98), fontFamily: 'Tiro'),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard(this.color, this.cardChild);
  final Color color;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(5.0)),
      margin: EdgeInsets.all(15.0),
    );
  }
}
