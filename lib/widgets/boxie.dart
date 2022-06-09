import 'package:flutter/material.dart';

class BoxIe extends StatelessWidget {
  const BoxIe({Key? key, required this.childcard, required this.colour})
      : super(key: key);

  final Widget childcard;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
        child: childcard,
      ),
    );
  }
}
