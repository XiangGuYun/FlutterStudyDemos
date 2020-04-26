import 'package:flutter/material.dart';

class NamedRouteApp3 extends StatelessWidget {
  var routes = {
    //配置路由
    "/page1": (context, {arguments}) => Page1(
          arguments: arguments,
        ),
    "/page2": (context) => Page2(),
    "/page3": (context) => Page3(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Page(), //不要在这里写具体的代码
      // ignore: missing_return
      onGenerateRoute: (RouteSettings settings) {
        //统一处理
        final String name = settings.name;
        final Function pageContentBuilder = this.routes[name];
        if (pageContentBuilder != null) {
          if (settings.arguments != null) {
            final Route route = MaterialPageRoute(
                builder: (context) =>
                    pageContentBuilder(context, arguments: settings.arguments));
            return route;
          } else {
            final Route route = MaterialPageRoute(
                builder: (context) => pageContentBuilder(context));
            return route;
          }
        }
      },
    );
  }
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NamedRouteApp1"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("Page1"),
            onPressed: () {
              Navigator.pushNamed(context, "/page1", arguments: {"id": 123});
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
  final arguments;

  Page1({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments != null ? "${arguments["id"]}" : "Page1"),
      ),
      body: Container(
        color: Colors.redAccent,
        child: RaisedButton(
          child: Text("Next"),
          onPressed: () {
            Navigator.pushNamed(context, "/page2");
          },
        ),
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
        child: RaisedButton(
          child: Text("Next"),
          onPressed: () {
            Navigator.pushNamed(context, "/page3");
          },
        ),
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
        child: RaisedButton(
          child: Text("BackToPage1"),
          onPressed: () {
//            Navigator.pushReplacementNamed(context, "/page1");
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => Page()),
                (route) => route == null //固定写法
            );
          },
        ),
      ),
    );
  }
}
