//StatelessWidget类似于Activity，但是只能放置静态元素
import 'package:flutter/material.dart';

class ImageApp extends StatelessWidget {
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
          title: Text("Image"),
        ),
        body: Column(
          //LinearLayout(vertical)线性布局
          children: <Widget>[
            Container(
              child: Image.network(
                "https://dss0.bdstatic.com/5aV1bjqh_Q23odCf/static/superman/img/logo/logo_redBlue-ece8ad45d6.png",
                //对齐方式
                alignment: Alignment.topLeft,
                //设置颜色混合
                color: Colors.greenAccent,
                colorBlendMode: BlendMode.darken,
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  child: Image.network(
                    "http://t9.baidu.com/it/u=583874135,70653437&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1588410035&t=f66f003ee66be61da8baf3480ad49060",
                    //设置缩放类型
                    fit: BoxFit.cover, //类似于centerCrop
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: Image.network(
                    "http://t9.baidu.com/it/u=583874135,70653437&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1588410035&t=f66f003ee66be61da8baf3480ad49060",
                    //设置缩放类型
                    fit: BoxFit.fill, //类似于fitXY
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: Image.network(
                    "http://t9.baidu.com/it/u=583874135,70653437&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1588410035&t=f66f003ee66be61da8baf3480ad49060",
                    //设置缩放类型
                    fit: BoxFit.contain, //类似于fitCenter
                  ),
                ),
              ],
            ),
            Container(
              width: 300,
              height: 80,
              child: Image.network(
                "http://t9.baidu.com/it/u=583874135,70653437&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1588410035&t=f66f003ee66be61da8baf3480ad49060",
                //设置缩放类型
                fit: BoxFit.contain, //类似于fitCenter
                //平铺模式
                repeat: ImageRepeat.repeat,
              ),
            ),
           Row(
             children: <Widget>[
               ///实现圆形图片1
               Container(
                 width: 100,
                 height: 100,
                 decoration: BoxDecoration( //setBackgroundColor强化版
                   //设置边框颜色和宽度以及样式
                     border: new Border.all(width: 2.0, color: Colors.red),
                     //设置边角半径
                     borderRadius: new BorderRadius.all(new Radius.circular(100)),
                     image:DecorationImage(
                         image: NetworkImage("https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2206176407,801024772&fm=11&gp=0.jpg",),
                         fit: BoxFit.cover
                     )
                 ),
               ),
               ///实现圆形图片2
               Container(
                 width: 100,
                 height: 100,
                 child: ClipOval(
                   child: Image.asset("images/lol.jpg",
                   width: 100,
                   height: 80,
                   fit: BoxFit.cover,),
                 ),
               )
             ],
           )
          ],
        ),
      ),
    );
  }
}
