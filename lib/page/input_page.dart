import 'package:bmi/components/bottom_button.dart';
import 'package:bmi/components/reusable_card.dart';
import 'package:bmi/result_brain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constains.dart';
import '../components/card_column.dart';
import 'result_page.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);
  @override
  State<InputPage> createState() => _InputPageState();
}

enum Gender { male, female }

enum Calculaton { minus, add }

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 50;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Máy Tính BMI",
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
                      cardColumn(FontAwesomeIcons.mars, "NAM"),
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
                        cardColumn(FontAwesomeIcons.venus, "NỮ")),
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
                      'CHIỀU CAO',
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
                    child: ReusableCard(
                      () {},
                      kColorCard,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'CÂN NẶNG',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                FontAwesomeIcons.minus,
                                (() {
                                  setState(() {
                                    weight--;
                                  });
                                }),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                FontAwesomeIcons.plus,
                                (() {
                                  setState(() {
                                    weight++;
                                  });
                                }),
                              )
                            ],
                          )
                        ],
                      ),
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
                          'TUỔI',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              FontAwesomeIcons.minus,
                              (() {
                                setState(() {
                                  age--;
                                });
                              }),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              FontAwesomeIcons.plus,
                              (() {
                                setState(() {
                                  age++;
                                });
                              }),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
            bottomButton(() {
              ResultBrain resultBrain = ResultBrain(height, weight);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                          resultBrain.BMI_Calculator(),
                          resultBrain.getResult(),
                          resultBrain.getInterpretation())));
            }, 'Xem kết quả nào')
          ],
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton(this.icon, this.onPress);
  final IconData icon;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
