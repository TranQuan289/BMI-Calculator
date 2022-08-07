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
                  Expanded(child: MyContainer()),
                  Expanded(child: MyContainer())
                ],
              ),
            ),
            Expanded(child: MyContainer()),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: MyContainer()),
                  Expanded(child: MyContainer())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget MyContainer() {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFF1D1F33), borderRadius: BorderRadius.circular(5.0)),
      margin: EdgeInsets.all(15.0),
    );
  }
}
