import 'package:calculator/utils/Variables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FunctionButtonBig extends StatelessWidget {
  final function;
  const FunctionButtonBig({Key key, this.function}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Text(
        function,
        style: GoogleFonts.openSans(
          fontStyle: FontStyle.normal,
          fontSize: 30.0,
        ),
      ),
    );
  }
}
