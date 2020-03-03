import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        decoration: BoxDecoration(
          color: kBottomContainerColour,
          //borderRadius: BorderRadius.circular(10.0),
          boxShadow: getShadow(),
        ),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }

  dynamic getShadow() {
    return [
      BoxShadow(
          //right clearer
          color: kShadowRight,
          offset: Offset(4.0, 1.0),
          blurRadius: 1.0,
          spreadRadius: 1.0),
      BoxShadow(
          //left darker
          color: kShadowLeft,
          offset: Offset(-4.0, -4.0),
          blurRadius: 5.0,
          spreadRadius: 3),
    ];
  }
}