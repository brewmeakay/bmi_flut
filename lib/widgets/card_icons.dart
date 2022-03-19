import 'package:flutter/material.dart';
import 'package:bmi_flut/constants.dart';

class CardIcons extends StatelessWidget {
  const CardIcons({Key? key, required this.iconData, required this.label})
      : super(key: key);

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        iconData,
        size: kIconSize,
      ),
      const SizedBox(
        height: kSizedBoxHeight,
      ),
      Text(
        label,
        style: kLabelTextStyle,
      )
    ]);
  }
}
