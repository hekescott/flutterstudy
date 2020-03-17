import 'package:flutter/material.dart';

class StackDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StackDemoState();
  }
}

class _StackDemoState extends State<StackDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ProgressIndicatorDemo学习"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
//          fit: StackFit.expand, //未定位widget占满Stack整个空间
          alignment: Alignment.center, //指定未定位或部分定位widget的对齐方式
          children: <Widget>[
            Container(
              child: Text("Hello world", style: TextStyle(color: Colors.white)),
              color: Colors.red,
            ),
            Positioned(
              left: 18.0,
              child: Text("I am Jack"),
            ),
            Positioned(
              top: 18.0,
//              child: Text("Your friend"),
              child: Container(child: Text("Your friend"),
              color:Colors.blue,),
            )
          ],
        ),
      ),
    );
  }
}
