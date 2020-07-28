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
      onPressed: () {},
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
