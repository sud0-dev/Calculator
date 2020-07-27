import 'package:calculator/utils/Variables.dart';
import 'package:flutter/material.dart';

class FunctionButtonBig extends StatelessWidget {
  final function;
  const FunctionButtonBig({Key key, this.function}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Text(
        function,
        style: TextStyle(fontSize: 30.0),
      ),
    );
  }
}
