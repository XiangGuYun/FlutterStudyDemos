import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp2/BaseStatelessWidget.dart';
import 'package:flutterapp2/BaseUtils.dart';

class RaiseButtonApp extends BaseStatelessWidget{
  @override
  String setAppTitle() {
    // TODO: implement setAppTitle
    return "RaiseButtonApp";
  }

  @override
  Widget setContentView(BuildContext context) {
    // TODO: implement setContentView
    return MyButton(text:"第1季");
  }

}

class MyButton extends StatelessWidget{

  final String text;

  const MyButton({Key key, this.text}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(text),
      textColor: Theme.of(context).accentColor,
      onPressed: (){
        "dasdasdsa".getText();
      },
    );
  }
}