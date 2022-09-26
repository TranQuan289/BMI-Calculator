import 'package:bmi/components/bottom_button.dart';
import 'package:bmi/constains.dart';
import 'package:bmi/components/reusable_card.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultPage extends StatelessWidget {
  // const ResultPage({Key? key}) : super(key: key);
  ResultPage(this.resultBMI, this.resultText, this.description);
  String resultBMI;
  String resultText;
  String description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
              child: Center(
            child: Text('Kết Quả Của Bạn Nì', style: kLabelResult),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              () {},
              kColorCard,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    resultBMI,
                    style: kBMITextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      description,
                      style: kBodyTextStyle,
                    ),
                  )
                ],
              ),
            ),
          ),
          bottomButton(() {
            Navigator.pop(context);
          }, 'Tính lại phát nữa')
        ],
      ),
    );
  }
}
