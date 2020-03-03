import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({@required this.color, this.cardChild, this.onPress});

  final Color color;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: getShadow(),
        ),
      ),
    );
  }

  dynamic getShadow() {
    return [
      BoxShadow(
          //right clearer
          color: kShadowLeft,
          offset: Offset(10.0, 10.0),
          blurRadius: 10,
          spreadRadius: 3.0),
      BoxShadow(
          //left darker
          color: kShadowRight,
          offset: Offset(-2.0, -2.0),
          blurRadius: 10,
          spreadRadius: 1.0),
    ];
  }
}
