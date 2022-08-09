import 'package:bmi/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_column.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);
  @override
  State<InputPage> createState() => _InputPageState();
}

const hightCalculator = 80.0;
const colorCard = Color(0xFF1D1F33);
const incolorCard = Color(0xFF111328);
const colorBottom = Color(0xFFEA1556);

enum Gender { male, female }

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

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
                      () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      selectedGender == Gender.male ? colorCard : incolorCard,
                      cardColumn(FontAwesomeIcons.mars, "MALE"),
                    ),
                  ),
                  Expanded(
                      child: ReusableCard(() {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  }, selectedGender == Gender.female ? colorCard : incolorCard,
                          cardColumn(FontAwesomeIcons.venus, "FEMALE")))
                ],
              ),
            ),
            Expanded(child: ReusableCard(() {}, colorCard, SizedBox.shrink())),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(() {}, colorCard, SizedBox.shrink())),
                  Expanded(
                      child: ReusableCard(() {}, colorCard, SizedBox.shrink()))
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
