import 'package:calculator/utils/Variables.dart';
import 'package:calculator/widgets/FunctionButtonSmall.dart';
import 'package:calculator/widgets/FunctionButttonBig.dart';
import 'package:calculator/widgets/NumericButtons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //top bar color
      statusBarIconBrightness: Brightness.light, //top bar icons
      systemNavigationBarColor: Colors.transparent, //bottom bar color
      systemNavigationBarIconBrightness: Brightness.dark, //bottom bar icons
    ));
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Text(
                          'DEG',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                      Spacer(),
                      IconButton(
                        icon: Text(
                          'DEG',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                TextField(
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60.0,
                  ),
                  readOnly: true,
                  controller: controller,
                  maxLines: 10,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                      top: 80,
                      right: 30,
                      left: 30,
                    ),
                    border: InputBorder.none,
                    hintText: "Description",
                    fillColor: Colors.grey[900],
                    filled: true,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Flexible(
                  flex: 18,
                  child: GridView.count(
                    padding: EdgeInsets.zero,
                    crossAxisCount: 3,
                    childAspectRatio: 0.95,
                    children: [
                      NumericButton(number: 7),
                      NumericButton(number: 8),
                      NumericButton(number: 9),
                      NumericButton(number: 4),
                      NumericButton(number: 5),
                      NumericButton(number: 6),
                      NumericButton(number: 1),
                      NumericButton(number: 2),
                      NumericButton(number: 3),
                      NumericButton(number: 0),
                      FunctionButtonBig(function: '.'),
                      FunctionButtonBig(function: '='),
                    ],
                  ),
                ),
                Flexible(
                  flex: 7,
                  child: Ink(
                    height: MediaQuery.of(context).size.height / 2,
                    color: Colors.amber,
                    child: GridView.count(
                      padding: EdgeInsets.zero,
                      crossAxisCount: 1,
                      childAspectRatio: 1.4,
                      children: [
                        FunctionButtonSmall(
                            icon: MaterialCommunityIcons.backspace_outline),
                        FunctionButtonSmall(
                            icon: MaterialCommunityIcons.division),
                        FunctionButtonSmall(
                            icon: MaterialCommunityIcons.multiplication),
                        FunctionButtonSmall(icon: MaterialCommunityIcons.minus),
                        FunctionButtonSmall(icon: MaterialCommunityIcons.plus),
                        // FunctionButtonSmall(icon: Icons.,),
                        // FunctionButtonSmall(function: '×'),
                        // FunctionButtonSmall(function: '-'),
                        // FunctionButtonSmall(function: '+'),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    color: Colors.blue[900],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
