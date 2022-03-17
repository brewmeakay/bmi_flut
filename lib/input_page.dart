import 'package:flutter/material.dart';
import 'widgets/card_icons.dart';
import 'widgets/reusable_card.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color activeCardColor = Color(0xff1d1e33);
const Color appBarColor = Color(0xFF0A0E21);

const double bottomContainerHeight = 80.0;
const Color bottomContainerColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appBarColor,
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    cardChild: Center(
                      child: CardIcons(
                        iconData: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    cardChild: CardIcons(
                        iconData: FontAwesomeIcons.venus, label: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(color: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(color: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
