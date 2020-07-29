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
      break;
    case 'subtract':
      operation = subtract;
      break;
    case 'multiply':
      operation = multiply;
      break;
    case 'divide':
      operation = divide;
      break;
    default:
  }
}

// sendToCalculate(String tooltip) {
//   if (controller.text != null) {
//     try {
//       number = int.parse(controller.text);
//     } catch (e) {
//       number = double.parse(controller.text);
//     }
//   }
//   switch (tooltip) {
//     case 'add':
//       calculate(add, number);
//       break;
//     case 'subtract':
//       calculate(subtract, number);
//       break;
//     case 'multiply':
//       calculate(multiply, number);
//       break;
//     case 'divide':
//       calculate(divide, number);
//       break;
//     default:
//       controller.text =
//           controller.text.substring(0, controller.text.length - 2);
//   }
// }
