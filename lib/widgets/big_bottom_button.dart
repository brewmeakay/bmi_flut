import 'package:flutter/material.dart';
import 'package:bmi_flut/constants.dart';

class BottomBigButton extends StatelessWidget {
  const BottomBigButton({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          label,
          style: kLargeButtonTextStyle,
        ),
      ),
      width: double.infinity,
      color: kBottomContainerColor,
      margin: const EdgeInsets.only(top: 10.0),
      height: kBottomContainerHeight,
    );
  }
}
