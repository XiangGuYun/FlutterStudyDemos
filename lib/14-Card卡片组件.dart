import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp2/BaseStatelessWidget.dart';

class CardApp extends BaseStatelessWidget {
  @override
  Widget setContentView(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(
                  "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2532420449,703298457&fm=26&gp=0.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Text(
                  "张三",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("flutter开发者"),
                leading: ClipOval(
                  child: Image.network("https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3521319392,1160740190&fm=26&gp=0.jpg"),
                ),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(
                  "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3304250832,2445630322&fm=26&gp=0.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Text(
                  "李四",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("android开发者"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2897882445,1953570051&fm=11&gp=0.jpg"),
                ),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(
                  "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2191726879,268032111&fm=26&gp=0.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Text(
                  "王五",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("ios开发者"),
                leading: ClipOval(
                  child: Image.network("https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3169323500,1174955540&fm=26&gp=0.jpg"),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  @override
  String setAppTitle() {
    return "CardApp";
  }
}
