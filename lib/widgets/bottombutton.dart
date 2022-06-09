import 'package:flutter/material.dart';

class BotoMbuton extends StatelessWidget {
  const BotoMbuton({Key? key, required this.onTap, required this.title})
      : super(key: key);
  final void Function() onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
          color: Color.fromRGBO(4, 92, 224, 1),
        ),
        child: SizedBox(
          height: 65,
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255), fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
