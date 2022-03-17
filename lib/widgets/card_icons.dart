import 'package:flutter/material.dart';

const Color cardTextColor = Color(0xff8d8e98);
const double iconSize = 80.0;
const double sizedBoxHeight = 15.0;
const double labelFontSize = 18.0;

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
        size: iconSize,
      ),
      const SizedBox(
        height: sizedBoxHeight,
      ),
      Text(
        label,
        style: const TextStyle(
          fontSize: labelFontSize,
          color: cardTextColor,
        ),
      )
    ]);
  }
}
