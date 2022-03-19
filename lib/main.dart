import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(
    (const BMICalculator()),
  );
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        sliderTheme: SliderTheme.of(context).copyWith(
          inactiveTrackColor: const Color(0xff8d8e98),
          thumbColor: const Color(0xffeb1555),
          overlayColor: const Color(0x29eb1555),
          activeTrackColor: Colors.white,
          thumbShape: const RoundSliderThumbShape(
            enabledThumbRadius: 15.0,
          ),
          overlayShape: const RoundSliderOverlayShape(overlayRadius: 30),
        ),
      ),
      home: const InputPage(),
    );
  }
}
