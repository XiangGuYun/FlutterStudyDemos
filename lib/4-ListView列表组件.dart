import 'package:flutter/material.dart';

class ListViewApp extends StatelessWidget {
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
          title: Text("ListView"),
        ),
        body: ListView(
          //内边距
          padding: EdgeInsets.all(20),
          children: <Widget>[
            ListTile(
              title: Text("列表项1", style: TextStyle(fontSize: 18),),
              subtitle: Text("副标题1"),
              leading: Icon(Icons.account_box, color: Colors.lightBlue, size: 50,),
            ),
            ListTile(
              title: Text("列表项1", style: TextStyle(fontSize: 18),),
              subtitle: Text("副标题1"),
              trailing: Icon(Icons.account_box, color: Colors.lightBlue, size: 50,),
            ),
            ListTile(
              title: Text("列表项1", style: TextStyle(fontSize: 18),),
              subtitle: Text("副标题1"),
              trailing: Image.network("https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3097378196,337345489&fm=26&gp=0.jpg")
            ),
          ],
        )
      ),
    );
  }
}
