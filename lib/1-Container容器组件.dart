import 'package:flutter/material.dart';

//StatelessWidget类似于Activity，但是只能放置静态元素
class ContainerApp extends StatelessWidget {
  @override
  //build类似于onCreate方法，在里面实现view层
  Widget build(BuildContext context) {
    //MaterialApp类似于Android中的DecorView根视图
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      //Scaffold类似于Android中的contentView
      home: Scaffold(
        appBar: AppBar(title: Text("Container"),),
        body: Column(//LinearLayout(vertical)线性布局
          children: <Widget>[
            SizedBox(height: 20,),
            getFirstWidget(),
            Text("xxxxxxxxx"),
            Text("xxxxxxxxx")
          ],
        ),
      ),
    );
  }

  Widget getFirstWidget() {
    ///Container是一个辅助性的容器，
    ///Flutter将所有组件的布局设置功能都抽离到了这个容器中
    return Container(
      child: Text("xxxxxxxxx"),
      padding: EdgeInsets.all(10),
      //setPadding内边距
      margin: EdgeInsets.all(10),
      //setMargin外边距
      width: double.infinity,
      //setWidth宽度
      height: 100,
      //setHeight高度
      alignment: const Alignment(0, 0),
      //变换
      transform:
      //Matrix4.translationValues(10, 10, 0),//位移
      //Matrix4.rotationZ(0.3),//旋转
      Matrix4.diagonal3Values(1.5, 1.2, 0),//缩放
      //setGravity对齐方式
//              color: Colors.lightBlue,//setBackgroundColor简化版，设置纯色背景
      decoration: BoxDecoration( //setBackgroundColor强化版
        //设置边框颜色和宽度以及样式
        border: new Border.all(width: 2.0, color: Colors.red),
        //设置纯色背景，优先度最低
        color: Colors.grey,
        //设置边角半径
        borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
        //设置渐变色背景，优先度较低
        gradient: const LinearGradient(colors: [
          Colors.lightBlue,
          Colors.greenAccent,
          Colors.purple
        ]),
        //设置背景图，优先度最高
        image: new DecorationImage(
          image: new NetworkImage(
              'http://h.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=0d023672312ac65c67506e77cec29e27/9f2f070828381f30dea167bbad014c086e06f06c.jpg'),
          centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
        ),
      ),
    );
  }
}