import 'package:calculator/utils/Variables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NumericButton extends StatelessWidget {
  final number;
  const NumericButton({Key key, this.number}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        controller.text += number.toString();
      },
      child: Text(
        number.toString(),
        style: GoogleFonts.openSans(
          fontStyle: FontStyle.normal,
          fontSize: 40.0,
        ),
      ),
    );
  }
}
