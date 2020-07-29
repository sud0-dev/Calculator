import 'package:calculator/utils/Variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ClearButton extends StatelessWidget {
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (controller.text != null && controller.text.length != 0) {
          String string =
              controller.text.substring(0, controller.text.length - 1);
          controller.text = string;
        }
      },
      onLongPress: () {
        if (controller.text != null && controller.text.length != 0) {
          controller.text = '';
        }
      },
      child: IconButton(
        splashRadius: 50.0,
        splashColor: Colors.black12,
        onPressed: () {},
        icon: Icon(MaterialCommunityIcons.backspace_outline),
      ),
    );
  }
}
