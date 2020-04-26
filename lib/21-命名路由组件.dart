import 'package:flutter/material.dart';

class NamedRouteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Page(), //不要在这里写具体的代码
      routes: {//配置路由
        "/page1": (context) => Page1(),
        "/page2": (context) => Page2(),
        "/page3": (context) => Page3(),
      },
    );
  }
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NamedRouteApp"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("Page1"),
            onPressed: () {
              Navigator.pushNamed(context, "/page1");
            },
          ),
          RaisedButton(
            child: Text("Page2"),
            onPressed: () {
              Navigator.pushNamed(context, "/page2");
            },
          ),
          RaisedButton(
            child: Text("Page2"),
            onPressed: () {
              Navigator.pushNamed(context, "/page3");
            },
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NamedRouteApp"),
      ),
      body: Container(
        color: Colors.redAccent,
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NamedRouteApp"),
      ),
      body: Container(
        color: Colors.greenAccent,
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NamedRouteApp"),
      ),
      body: Container(
        color: Colors.blueAccent,
      ),
    );
  }
}
