import 'package:calculator/utils/Variables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FunctionButtonSmall extends StatelessWidget {
  final function;
  const FunctionButtonSmall({Key key, this.function}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Text(
        function,
        style: GoogleFonts.openSans(
          fontStyle: FontStyle.normal,
          fontSize: 25.0,
        ),
      ),
    );
  }
}
