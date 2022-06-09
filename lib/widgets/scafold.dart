import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homiehal extends StatelessWidget {
  const Homiehal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff020121),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 100,
                padding: const EdgeInsets.all(10),
                color: const Color.fromRGBO(4, 92, 224, 1),
                child: const Icon(FontAwesomeIcons.mars),
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                height: 200,
                width: 100,
                color: const Color.fromRGBO(4, 92, 224, 1),
                padding: const EdgeInsets.all(10),
                child: const Icon(FontAwesomeIcons.venus),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 200,
            width: 100,
            color: const Color.fromRGBO(4, 92, 224, 1),
            padding: const EdgeInsets.all(10),
            child: const Icon(FontAwesomeIcons.venus),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 100,
                color: const Color.fromRGBO(4, 92, 224, 1),
                padding: const EdgeInsets.all(10),
                child: const Icon(FontAwesomeIcons.venus),
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                height: 200,
                width: 100,
                color: const Color.fromRGBO(4, 92, 224, 1),
                padding: const EdgeInsets.all(10),
                child: const Icon(FontAwesomeIcons.venus),
              ),
            ],
          )
        ],
      ),
    );
  }
}
