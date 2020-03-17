import 'package:flutter/material.dart';

class AlignDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AlignDemoState();
  }
}

class _AlignDemoState extends State<AlignDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ProgressIndicatorDemo学习"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            getAlginOne(),
            getAlgin2(),
            getAlgin3(),
            getAlgin4(),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: Center(
                child: Text("xxx"),
              ),
            ),
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.red),
          child: Center(
            widthFactor: 5,
            heightFactor: 1,
            child: Text("xxx")
          )
        ),
          ],
        ),
      ),
    );
  }

  Container getAlginOne() {
    return Container(
      height: 120.0,
      width: 120.0,
      color: Colors.blue[50],
      child: Align(
        alignment: Alignment.topRight,
        child: FlutterLogo(
          size: 60,
        ),
      ),
    );
  }

  Container getAlgin2() {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 10),
      color: Colors.blue[50],
      child: Align(
        //尺寸的1.5倍
        widthFactor: 1.5,
        heightFactor: 1.5,
        alignment: Alignment.topRight,
        child: FlutterLogo(
          size: 60,
        ),
      ),
    );
  }

  Container getAlgin3() {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 10),
      color: Colors.blue[50],
      child:  Align(
        widthFactor: 2,
        heightFactor: 2,
        //Alignment Widget会以矩形的中心点作为坐标原点
        alignment: Alignment(-1,-1),
        child: FlutterLogo(
          size: 60,
        ),
      )
      ,
    );
  }
  Container getAlgin4() {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 10),
      color: Colors.blue[50],
      child:  Align(
        widthFactor: 2,
        heightFactor: 2,
        //FractionalOffset 左侧顶点为坐标原点
        alignment: FractionalOffset(0, 0),
        child: FlutterLogo(
          size: 60,
        ),
      )
      ,
    );
  }
}
