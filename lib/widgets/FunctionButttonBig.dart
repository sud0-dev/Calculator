import 'package:calculator/utils/Variables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FunctionButtonBig extends StatelessWidget {
  final function;
  const FunctionButtonBig({Key key, this.function}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 55.0,
      splashColor: Colors.black12,
      onPressed: () {
        if (function == '.') {
          if (!controller.text.contains('.')) {
            controller.text += '.';
          } else if (controller.text.contains('.') && text.length != 0) {
            var opr =
                controller.text.substring(text.length, controller.text.length);
            if (!opr.contains('.')) {
              controller.text += '.';
            }
          }
        }
      },
      icon: Text(
        function,
        style: GoogleFonts.openSans(
          fontStyle: FontStyle.normal,
          fontSize: 30.0,
        ),
      ),
    );
  }
}
