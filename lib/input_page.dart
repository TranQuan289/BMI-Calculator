import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text(
          "BMI Caculator",
        )),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(Color(0xFF1D1F33))),
                  Expanded(child: ReusableCard(Color(0xFF1D1F33)))
                ],
              ),
            ),
            Expanded(child: ReusableCard(Color(0xFF1D1F33))),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(Color(0xFF1D1F33))),
                  Expanded(child: ReusableCard(Color(0xFF1D1F33)))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
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
