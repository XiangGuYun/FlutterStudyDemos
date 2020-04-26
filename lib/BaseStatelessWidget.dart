import 'package:flutter/material.dart';

//StatelessWidget类似于Activity，但是只能放置静态元素
abstract class BaseStatelessWidget extends StatelessWidget {
  @override
  //build类似于onCreate方法，在里面实现view层
  Widget build(BuildContext context) {
    //MaterialApp类似于Android中的DecorView根视图
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      //Scaffold类似于Android中的contentView
      home: Scaffold(
        appBar: AppBar(
          title: Text(setAppTitle()),
        ),
        body: setContentView(context),
      ),
    );
  }

  Widget setContentView(BuildContext context);

  String setAppTitle();
}
