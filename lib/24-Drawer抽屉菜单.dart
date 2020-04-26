import 'package:flutter/material.dart';
import 'package:flutterapp2/BaseStatelessWidget1.dart';

class DrawerRealApp extends BaseStatelessWidget1{
  @override
  Widget setHome(BuildContext context) {
    return DrawerApp();
  }
}

class DrawerApp extends StatefulWidget {
  @override
  _TabControllerAppState createState() => _TabControllerAppState();
}

class _TabControllerAppState extends State<DrawerApp>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  ///当组件销毁时调用
  @override
  void dispose() {
    super.dispose();
  }

  ///当组件初始化完成调用
  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 3);
    //监听Tab切换事件
    _controller.addListener((){
      print(_controller.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("DrawerApp"),
          bottom: TabBar(
            controller: _controller,
            tabs: <Widget>[
              Tab(text: "Tab1",),
              Tab(text: "Tab2",),
              Tab(text: "Tab3",),
            ],
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: <Widget>[
            Center(child: Text("Tab1"),),
            Center(child: Text("Tab2"),),
            Center(child: Text("Tab3"),),
          ],
        ),
        ///左侧抽屉菜单
        drawer: Drawer(
          child: Column(
            children: <Widget>[
             Row(
               children: <Widget>[
                 Expanded(
                   child:  DrawerHeader(
                     child: Text("你好Flutter"),
                     decoration: BoxDecoration(
                       color: Colors.blueAccent,
                       image: DecorationImage(
                         image: NetworkImage("https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2967521579,198059858&fm=26&gp=0.jpg"),
                         fit: BoxFit.cover
                       )
                     ),
                   ),
                 )
               ],
             ),
              ListTile(
                title: Text("我的空间"),
                leading: Icon(Icons.home),
              ),
              Divider(),
              ListTile(
                title: Text("用户中心"),
                leading: Icon(Icons.verified_user),
                onTap: (){
//                  Navigator.of(context).pop();//隐藏侧边栏
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>UserCenter()
                  ));
                },
              ),
              Divider(),
              ListTile(
                title: Text("设置"),
                leading: Icon(Icons.settings),
              ),
              Divider(),
            ],
          )
        ),
        ///右侧抽屉菜单
        endDrawer: Drawer(
          child: Text("你好Flutter"),
        ),
      ),
    );
  }
}

class UserCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
    );
  }
}

