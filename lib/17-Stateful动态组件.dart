import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp2/BaseStatelessWidget.dart';

class StatefulApp extends BaseStatelessWidget {
  @override
  String setAppTitle() {
    // TODO: implement setAppTitle
    return "StatefulApp";
  }

  @override
  Widget setContentView(BuildContext context) {
    // TODO: implement setContentView
    return MyStateful();
  }
}

class MyStateful extends StatefulWidget {
  @override
  _MyStatefulState createState() => _MyStatefulState();
}

class _MyStatefulState extends State<MyStateful> {
  int countNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Chip(
          label: Text("你好$countNumber"),
        ),
        RaisedButton(
          child: Text("按钮"),
          onPressed: () {
            setState(() {
              countNumber++;
            });
            print(countNumber);
          },
        )
      ],
    );
  }
}
