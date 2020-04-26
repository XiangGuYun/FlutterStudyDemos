import 'package:flutter/material.dart';

class TabControllerApp extends StatefulWidget {
  @override
  _TabControllerAppState createState() => _TabControllerAppState();
}

class _TabControllerAppState extends State<TabControllerApp>
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
          title: Text("TabControllerApp"),
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
      ),
    );
  }
}
