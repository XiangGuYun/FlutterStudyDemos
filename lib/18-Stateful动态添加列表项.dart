import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp2/BaseStatelessWidget.dart';

class StatefulApp1 extends BaseStatelessWidget {
  @override
  String setAppTitle() {
    // TODO: implement setAppTitle
    return "StatefulApp1";
  }

  @override
  Widget setContentView(BuildContext context) {
    // TODO: implement setContentView
    return ListAdd();
  }
}

class ListAdd extends StatefulWidget {
  @override
  _MyStatefulState createState() => _MyStatefulState();
}

class _MyStatefulState extends State<ListAdd> {

  var list = [
  "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2532420449,703298457&fm=26&gp=0.jpg",
  "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2191726879,268032111&fm=26&gp=0.jpg",
  "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3304250832,2445630322&fm=26&gp=0.jpg",
  "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2185947822,3251957153&fm=26&gp=0.jpg",
  "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=348547031,3016482898&fm=26&gp=0.jpg",
  "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3946859238,1232263274&fm=26&gp=0.jpg",
  // ignore: top_level_function_literal_block
  ].map((url) {
    return Container(
      height: 100,
      child: Image.network(url, fit: BoxFit.cover,),
    );
  }).toList();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
            scrollDirection: Axis.vertical,
            //内边距
            padding: EdgeInsets.all(5),
            children: list
        ),
        Align(
          alignment: Alignment.center,
          child:  RaisedButton(
            child: Text("添加"),
            onPressed: (){
              setState(() {
                list.add(Container(
                  height: 100,
                  child: Image.network("http://img0.imgtn.bdimg.com/it/u=3705399699,4288857997&fm=26&gp=0.jpg", fit: BoxFit.cover,),
                ));
              });
            },
          ),
        )
      ],
    );
  }
}
