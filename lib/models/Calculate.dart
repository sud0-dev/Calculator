import 'package:calculator/utils/Variables.dart';

calculate(Function operation, var operand2) {
  print('In calculate:' + operand.toString());
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
