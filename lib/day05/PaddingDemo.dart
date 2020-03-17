import 'package:flutter/material.dart';

class PaddingDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PaddingDemoState();
  }
}

class _PaddingDemoState extends State<PaddingDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("PaddingDemo学习"),
        ),
        body: Container(
          color: Colors.blue[50],
          child: Padding(
            //上下左右各添加16像素补白
            padding: EdgeInsets.all(30.0),
            child: Column(
              //显式指定对齐方式为左对齐，排除对齐干扰
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    color: Colors.red,
                    child: Padding(
                      //左边添加8像素补白
                      padding: const EdgeInsets.only(left: 28.0),
                      child: Text("Hello world"),
                    )),
                Padding(
                  //上下各添加8像素补白
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text("I am Jack"),
                ),
                Padding(
                  // 分别指定四个方向的补白
                  padding: const EdgeInsets.fromLTRB(20.0, .0, 20.0, 20.0),
                  child: Text("Your friend"),
                )
              ],
            ),
          ),
        ));
  }
}
