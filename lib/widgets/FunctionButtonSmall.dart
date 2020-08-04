import 'package:calculator/models/Calculate.dart';
import 'package:calculator/utils/Variables.dart';
import 'package:flutter/material.dart';

class FunctionButtonSmall extends StatelessWidget {
  final icon;
  final tooltip;
  const FunctionButtonSmall({
    Key key,
    this.icon,
    this.tooltip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 50.0,
      splashColor: Colors.black12,
      onPressed: () => assignOperation(tooltip),
      icon: Icon(icon),
    );
  }
}

assignOperation(String tooltip) {
  switch (tooltip) {
    case 'add':
      operation = add;
      controller.text += '+';
      break;
    case 'subtract':
      operation = subtract;
      controller.text += '-';
      break;
    case 'multiply':
      operation = multiply;
      controller.text += '×';
      break;
    case 'divide':
      operation = divide;
      controller.text += '÷';
      break;
    default:
  }
  if (controller.text != null && controller.text.length != 0) {
    text = controller.text.substring(0, controller.text.length);
    operand = text.substring(0, text.length - 1);
    try {
      operand = int.parse(operand);
    } catch (e) {
      operand = double.parse(operand);
    }
  }
}
