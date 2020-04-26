import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
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
            title: Text("Text"),
          ),
          body: Container(
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Text(
                    "罗志祥周扬青分手",
                    //文本对齐方式，TextView中的gravity属性
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        //设置本文大小，setTextSize
                        fontSize: 16,
                        //设置文本颜色，setTextColor
                        color: Colors.redAccent,
                        //设置字体权重
                        fontWeight: FontWeight.bold,
                        //设置字体样式
                        fontStyle: FontStyle.italic,
                        //设置字体线条
                        decoration: TextDecoration.lineThrough,//删除线
                        //设置线条颜色
                        decorationColor: Colors.yellowAccent,
                        //设置线条样式
                        decorationStyle: TextDecorationStyle.dashed,
                        //设置字间距
                        letterSpacing: 5
                    ),
                    //设置文本缩放倍率
                    textScaleFactor: 2.0,
                  ),
                  Text(
                    "科莫说，中国出现疫情后，美国发布针对中国的旅行禁令，可对欧洲却继续敞开大门，针对欧洲的旅行禁令直到3月中旬才出台，这相当于“关上了前门、却给病毒留下了后门”。",
                    //设置最大行数
                    maxLines: 2,
                    //文本溢出处理
                    overflow: TextOverflow.ellipsis,
                    //设置行间距
                    strutStyle: StrutStyle(forceStrutHeight: true, height: 1, leading: 0.8),
                  )
                ],
              ))),
    );
  }
}
