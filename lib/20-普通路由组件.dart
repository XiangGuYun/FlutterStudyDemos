import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp2/BaseStatelessWidget1.dart';

class RouteApp extends BaseStatelessWidget1 {
  @override
  Widget setHome(BuildContext context) {
    // TODO: implement setHome
    return FirstScreen();
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("导航页面"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("查看商品详情页"),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context)=>SecondScreen(title:"随机数${Random().nextInt(100)}")
            ));
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {

  String title = "";

  SecondScreen({this.title});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Center(
        child: FloatingActionButton(
          child: Text("返回"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
