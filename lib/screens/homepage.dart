import 'package:bmi_calculator/calculation/calc_brain.dart';
import 'package:bmi_calculator/screens/resultpage.dart';
import 'package:bmi_calculator/widgets/bottombutton.dart';
import 'package:bmi_calculator/widgets/boxie.dart';
import 'package:bmi_calculator/widgets/iconbutton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int weight = 50;
  int height = 150;
  int age = 20;
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
        children: <Widget>[
         
          Expanded(
            child: BoxIe(
                colour: const Color.fromRGBO(4, 92, 224, 1),
                childcard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '$height',
                          style: const TextStyle(fontSize: 30),
                        ),
                        const Text(
                          '  cm',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: const Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: const Color(0xFFEB1555),
                        overlayColor: const Color(0x29EB1555),
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 15.0),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120,
                          max: 220,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          }),
                    ),
                  ],
                )),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: BoxIe(
                    childcard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButtone(
                              icon: const Icon(FontAwesomeIcons.minus),
                              onpressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            Text(
                              weight.toString(),
                              style: const TextStyle(fontSize: 30),
                            ),
                            IconButtone(
                              icon: const Icon(FontAwesomeIcons.plus),
                              onpressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                    colour: const Color.fromRGBO(4, 92, 224, 1),
                  ),
                ),
                Expanded(
                  child: BoxIe(
                    colour: const Color.fromRGBO(4, 92, 224, 1),
                    childcard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButtone(
                              onpressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              icon: const Icon(FontAwesomeIcons.minus),
                            ),
                            Text(
                              age.toString(),
                              style: const TextStyle(fontSize: 30),
                            ),
                            IconButtone(
                              onpressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: const Icon(FontAwesomeIcons.plus),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          BotoMbuton(
            onTap: () {
              Calculator calci = Calculator(height: height, weight: weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => ResultPage(
                            bmiResult: calci.calculatorBMI(),
                            resultText: calci.getResults(),
                            interpretation: calci.getInterpretation(),
                          ))));
            },
            title: 'Calculate',
          )
        ],
      ),
    );
  }
}

 /* Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: BoxIe(
                    childcard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 70,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                    colour: const Color.fromRGBO(4, 92, 224, 1),
                  ),
                ),
                Expanded(
                  child: BoxIe(
                    colour: const Color.fromRGBO(4, 92, 224, 1),
                    childcard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 70,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ), */