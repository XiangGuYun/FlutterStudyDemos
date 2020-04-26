import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp2/BaseStatelessWidget1.dart';

class ButtonApp extends BaseStatelessWidget1 {
  @override
  Widget setHome(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonApp"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: 100, //设置按钮宽度
                  height: 50, //设置按钮高度
                  child: RaisedButton(
                    child: Text("变大按钮"),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    elevation: 10,
                    //阴影大小
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                child: Text("普通按钮"),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {},
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: RaisedButton(
                  child: Text("自适应按钮"),
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                  label: Text("图标按钮")),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                child: Text("圆角按钮"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 60,
                height: 60,
                child: RaisedButton(
                  child: Text("圆形按钮"),
                  shape: CircleBorder(side: BorderSide(color: Colors.white)),
                  onPressed: () {},
                  splashColor: Colors.grey, //水波纹颜色
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text("扁平按钮"),
                color: Colors.redAccent,
                onPressed: (){},
              ),
              SizedBox(width: 10,),
              OutlineButton(
                child: Text("边框按钮"),
                color: Colors.purple,//无效
                onPressed: (){},
              ),
              SizedBox(width: 10,),
              IconButton(///图标按钮
                icon:Icon(Icons.settings),
                onPressed: (){},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: Text("登录"),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                  RaisedButton(
                    child: Text("注册"),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          MyButton(text: "自定义按钮", pressed: (){},),
          FloatingActionButton(
            child: Icon(Icons.add, color: Colors.black, size: 30,),
            backgroundColor: Colors.redAccent,
            onPressed: (){
              print("FloatingActionButton");
            },
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}

///自定义按钮
class MyButton extends StatelessWidget {

  final String text;
  final pressed;
  final width;
  final height;

  const MyButton({this.text, this.pressed=null, this.width=80.0, this.height=40.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: RaisedButton(
        child: Text(text),
        onPressed: pressed,
      ),
    );
  }
}

