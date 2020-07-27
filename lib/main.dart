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
                      flex: 3,
                      child: GridView.count(
                        crossAxisCount: 3,
                        childAspectRatio: 1.05,
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            child: Text('0'),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Text('0'),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Text('0'),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Text('0'),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Text('0'),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Text('0'),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Text('0'),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Text('0'),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Text('0'),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Text('0'),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Text('0'),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Text('0'),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: GridView.count(
                        crossAxisCount: 1,
                        childAspectRatio: 1.3,
                        children: [
                          Flexible(
                            flex: 1,
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text('0'),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text('0'),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text('0'),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text('0'),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text('0'),
                            ),
                          ),
                        ],
                      ),
                    ),
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
