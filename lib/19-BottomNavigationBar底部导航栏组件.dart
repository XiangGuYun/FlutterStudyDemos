import 'package:flutter/material.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'BaseStatelessWidget1.dart';
import 'BaseUtils.dart';

class BNBApp extends BaseStatelessWidget1{
  @override
  Widget setHome(BuildContext context) {
    return TabLayout();
  }
}

class TabLayout extends StatefulWidget {
  @override
  _TabLayoutState createState() => _TabLayoutState();
}

class _TabLayoutState extends State<TabLayout> {
  int currentIndex = 0;
  var pages = [Home(), Category(), Settings()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("底部导航栏"),),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //设置当前选中项，从0开始
        currentIndex: currentIndex,
        //点击Tab事件
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        iconSize: 20,//icon的大小
        fixedColor: Colors.orangeAccent,//选中的颜色
        type: BottomNavigationBarType.fixed,//是否固定或可偏移，类似于isFixed属性
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("分类")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("设置")
          ),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
    );
  }
}

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
    );
  }
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
    );
  }
}