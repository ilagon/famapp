import 'package:flutter/material.dart';
import '../constants/color_palette.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key, required Widget child})
      : _child = child,
        super(key: key);

  final Widget _child;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 25.0),
        padding: const EdgeInsets.all(30.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: primaryColor,
        ),
        child: _child);
  }
}
