import 'package:calculator/utils/Variables.dart';

calculate(Function operation, var operand) {
  var operand2;
  try {
    operand2 = int.parse(controller.text);
  } catch (e) {
    operand2 = double.parse(controller.text);
  }
  return operation(operand, operand2);
}

add(var operand, var operand2) {
  return operand + operand2;
}

subtract(var operand, var operand2) {
  return operand - operand2;
}

multiply(var operand, var operand2) {
  return operand * operand2;
}

divide(var operand, var operand2) {
  return operand / operand2;
}
