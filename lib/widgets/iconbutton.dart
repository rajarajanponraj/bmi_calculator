import 'package:flutter/material.dart';

class IconButtone extends StatelessWidget {
  const IconButtone({Key? key, required this.icon, required this.onpressed}) : super(key: key);
  final void Function() onpressed;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed: onpressed,
    shape: const CircleBorder(),
    elevation: 1.0,
    constraints: const BoxConstraints.tightFor(
      height: 50.0,
      width: 50.0,
    ),
    fillColor: const Color(0x2fffffff),
     
    child: icon,);
  }
}
