import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp2/BaseStatelessWidget1.dart';

class TextFieldApp extends BaseStatelessWidget1{

  @override
  Widget setHome(BuildContext context) {
    return TextFieldWidget();
  }

}

class TextFieldWidget extends StatefulWidget {
  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {

  var _username = TextEditingController();

  @override
  void initState() {
    super.initState();
    _username.text = "初始值";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextFieldApp"),),
      body: Scaffold(
        appBar: AppBar(title: Text(""),),
        body: TextField(),
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
                hintText: "请输入用户名",
                border: OutlineInputBorder(

                ),
                labelText: "用户名：",
                labelStyle: TextStyle(fontSize: 20)
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "请输入密码",
                icon: Icon(Icons.lock),
                border: OutlineInputBorder(

                ),
                labelText: "密码：",
                labelStyle: TextStyle(fontSize: 20)
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            maxLines: 4,//最大行数
            maxLength: 100,//最多字数
            decoration: InputDecoration(
                hintText: "请输如地址",
                border: OutlineInputBorder(

                ),
                labelText: "详细地址：",
                labelStyle: TextStyle(fontSize: 20)
            ),
          ),

        ],
      ),
    );
  }
}

