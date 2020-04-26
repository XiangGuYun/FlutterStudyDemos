import 'package:flutter/material.dart';
import 'package:flutterapp2/BaseStatelessWidget1.dart';

class AppBarApp extends BaseStatelessWidget1 {
  @override
  Widget setHome(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppBarApp"),
          backgroundColor: Colors.greenAccent, //导航栏颜色
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){
              print("menu");
            },
          ),//左侧图标
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){
                print("search");
              },
            )
          ],
          centerTitle: true,//标题居中显示
          bottom: TabBar(
            indicatorColor: Colors.yellowAccent,//指示器颜色
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.blue,
            tabs: <Widget>[
              Tab(text: "热门",),
              Tab(text: "推荐",),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(title: Text("第一个TAB"),),
                ListTile(title: Text("第一个TAB"),),
                ListTile(title: Text("第一个TAB"),),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text("第二个TAB"),),
                ListTile(title: Text("第二个TAB"),),
                ListTile(title: Text("第二个TAB"),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
