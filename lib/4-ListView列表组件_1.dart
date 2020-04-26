import 'package:flutter/material.dart';

class ListViewApp1 extends StatelessWidget {
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
          body: Container(
              child: ListView(
                padding: EdgeInsets.all(5),
                children: <Widget>[
                  Image.network(
                    "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2532420449,703298457&fm=26&gp=0.jpg",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 5,),
                  Image.network(
                    "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2191726879,268032111&fm=26&gp=0.jpg",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 5,),
                  Image.network(
                    "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3304250832,2445630322&fm=26&gp=0.jpg",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 5,),
                  Image.network(
                    "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2185947822,3251957153&fm=26&gp=0.jpg",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 5,),
                  Image.network(
                    "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=348547031,3016482898&fm=26&gp=0.jpg",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 5,),
                  Image.network(
                    "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3946859238,1232263274&fm=26&gp=0.jpg",
                    fit: BoxFit.cover,
                  ),
                ],
              ))),
    );
  }
}
