import 'package:flutter/material.dart';

class PositionedApp extends StatelessWidget {
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
            title: Text("Positioned"),
          ),
          body: Container(
            color: Colors.greenAccent,
            child: Stack(
              //LinearLayout(vertical)线性布局
              children: <Widget>[
                Positioned(
                    left: 100,
                    top: 100,
                    child: Container(
                      width: 200,
                      height: 200,
                      child: Image.network(
                        "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2532420449,703298457&fm=26&gp=0.jpg",
                        fit: BoxFit.cover,
                      ),
                    )),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 150,
                    height: 150,
                    child: Image.network(
                      "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2191726879,268032111&fm=26&gp=0.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: Image.network(
                    "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3304250832,2445630322&fm=26&gp=0.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
