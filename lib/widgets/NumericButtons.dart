import 'package:calculator/utils/Variables.dart';
import 'package:flutter/material.dart';

class NumericButton extends StatelessWidget {
  final number;
  const NumericButton({Key key, this.number}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        controller.text += number.toString();
      },
      child: Text(number),
    );
  }
}
