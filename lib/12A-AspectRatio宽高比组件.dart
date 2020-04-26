import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp2/BaseStatelessWidget.dart';

class AspectRatioApp extends BaseStatelessWidget{

  @override
  Widget setContentView(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.0/1.0,
      child: Image.network(
        "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2532420449,703298457&fm=26&gp=0.jpg",
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  String setAppTitle() {
    return "AspectRatioApp";
  }

}