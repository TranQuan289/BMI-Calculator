import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(this.onPress, this.color, this.cardChild);
  final Color color;
  final Widget cardChild;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(5.0)),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
