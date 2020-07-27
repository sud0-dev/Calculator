import 'package:flutter/material.dart';

class FunctionButtonSmall extends StatelessWidget {
  final icon;
  const FunctionButtonSmall({Key key, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 50.0,
      splashColor: Colors.black12,
      onPressed: () {},
      icon: Icon(icon),
    );
  }
}
