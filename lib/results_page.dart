import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        body: Text(
          'Hello',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
