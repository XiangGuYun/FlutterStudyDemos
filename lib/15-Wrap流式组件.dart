import 'package:flutter/cupertino.dart';
import 'package:flutterapp2/16-RaiseButton%E6%8C%89%E9%92%AE%E7%BB%84%E4%BB%B6.dart';
import 'package:flutterapp2/BaseStatelessWidget.dart';

class WrapApp extends BaseStatelessWidget{
  @override
  String setAppTitle() {
    // TODO: implement setAppTitle
    return "WrapApp";
  }

  @override
  Widget setContentView(BuildContext context) {
    // TODO: implement setContentView
    return Wrap(
      spacing: 15,//横轴间距
      runSpacing: 5,//纵轴间距
      runAlignment: WrapAlignment.center,//纵向对齐方式
      direction: Axis.vertical,//方向
      children: <Widget>[
        MyButton(text:"第1季----"),
        MyButton(text:"第2季------------"),
        MyButton(text:"第3季"),
        MyButton(text:"第4季----"),
        MyButton(text:"第5季"),
        MyButton(text:"第6季--------"),
        MyButton(text:"第7季"),
        MyButton(text:"第8季"),
        MyButton(text:"第9季"),
        MyButton(text:"第10季--------"),
        MyButton(text:"第11季"),
        MyButton(text:"第12季--------"),
      ],
    );
  }

}