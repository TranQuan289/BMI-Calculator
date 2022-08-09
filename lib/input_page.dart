import 'package:bmi/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constains.dart';
import 'card_column.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);
  @override
  State<InputPage> createState() => _InputPageState();
}

enum Gender { male, female }

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
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
                      selectedGender == Gender.male ? kColorCard : kIncolorCard,
                      cardColumn(FontAwesomeIcons.mars, "MALE"),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(() {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                        selectedGender == Gender.female
                            ? kColorCard
                            : kIncolorCard,
                        cardColumn(FontAwesomeIcons.venus, "FEMALE")),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                () {},
                kColorCard,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          "cm",
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Color(0xFF8D8E98),
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 12.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 25.0)),
                      child: Slider(
                          value: height.toDouble(),
                          min: 100.0,
                          max: 220.0,
                          onChanged: (double valueSlider) {
                            setState(() {
                              height = valueSlider.toInt();
                            });
                          }),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child:
                          ReusableCard(() {}, kColorCard, SizedBox.shrink())),
                  Expanded(
                      child: ReusableCard(() {}, kColorCard, SizedBox.shrink()))
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: kHightCalculator,
              decoration: BoxDecoration(
                color: kColorBottomAndSlider,
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
}
