import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp2/BaseStatelessWidget1.dart';

class RadioApp extends BaseStatelessWidget1{
  @override
  Widget setHome(BuildContext context) {
    return RadioRealApp();
  }

}

class RadioRealApp extends StatefulWidget {
  @override
  _RadioRealAppState createState() => _RadioRealAppState();
}

class _RadioRealAppState extends State<RadioRealApp> {

  var sex = 1;//男
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RadioApp"),),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            getRow1(),
            getRow2(),
            SizedBox(height: 40,),
            RadioListTile(
              value: 1,
              onChanged: (v){
                setState(() {
                  sex = v;
                });
              },
              groupValue: sex,
              title: Text("男性"),
              subtitle: Text("------"),
              //secondary: Image.network(""),//配图
            ),
            RadioListTile(
              value: 2,
              onChanged: (v){
                setState(() {
                  sex = v;
                });
              },
              groupValue: sex,
              title: Text("女性"),
              subtitle: Text("------"),
            ),
            SizedBox(height: 40,),
            Switch(
              value: flag,
              onChanged: (v){
                setState(() {
                  print(v);
                  this.flag = v;
                });
              },
            ),
            SwitchListTile(
              value: flag,
              onChanged: (v){
                setState(() {
                  print(v);
                  this.flag = v;
                });
              },
              title: Text("同意"),
            )
          ],
        ),
      ),
    );
  }

  getRow1() {
    return Row(
      children: <Widget>[
        Radio(
          value: 1,
          onChanged: (v){
            setState(() {
              sex = v;
            });
          },
          groupValue: sex,
        ),
        Text("男"),
        Radio(
          value: 2,
          onChanged: (v){
            setState(() {
              sex = v;
            });
          },
          groupValue: sex,
        ),
        Text("女"),
      ],
    );
  }

  getRow2() {
    return Row(
      children: <Widget>[
        Text("$sex"),
        Text(sex==1?"男":"女")
      ],
    );
  }
}
