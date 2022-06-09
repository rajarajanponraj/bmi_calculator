import 'package:bmi_calculator/widgets/boxie.dart';
import 'package:flutter/material.dart';

import '../widgets/bottombutton.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {Key? key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation})
      : super(key: key);

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff020121),
      appBar: AppBar(
        backgroundColor: const Color(0xff020121),
        title: const Text(
          'BMI Calculator',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(15.0),
              child: const Text(
                'Your Result',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: BoxIe(
                childcard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: const TextStyle(fontSize: 20),
                    ),
                    Text(
                      bmiResult,
                      style: const TextStyle(fontSize: 40),
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                colour: const Color.fromRGBO(4, 92, 224, 1),
              )),
          BotoMbuton(
            onTap: () {
              Navigator.pop(context);
            },
            title: 'Re-Calculate',
          )
        ],
      ),
    );
  }
}
