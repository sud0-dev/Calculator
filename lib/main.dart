import 'package:calculator/utils/Variables.dart';
import 'package:calculator/widgets/FunctionButtonSmall.dart';
import 'package:calculator/widgets/FunctionButttonBig.dart';
import 'package:calculator/widgets/NumericButtons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  child: TextField(
                    readOnly: true,
                    controller: controller,
                    maxLines: 40,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Description",
                      fillColor: Colors.grey[900],
                      filled: true,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                      flex: 6,
                      child: GridView.count(
                        crossAxisCount: 3,
                        childAspectRatio: 0.83,
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
                      flex: 3,
                      child: GridView.count(
                        crossAxisCount: 1,
                        childAspectRatio: 1.6,
                        children: [
                          FunctionButtonSmall(function: '⌫'),
                          FunctionButtonSmall(function: '÷'),
                          FunctionButtonSmall(function: '×'),
                          FunctionButtonSmall(function: '-'),
                          FunctionButtonSmall(function: '+'),
                        ],
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
        ),
      ),
    );
  }
}
