import 'package:flutter/material.dart';

class DecoratedBoxDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DecoratedBoxDemoState();
  }
}

class _DecoratedBoxDemoState extends State<DecoratedBoxDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("PaddingDemo学习"),
        ),
        body: Container(
          color: Colors.blue[50],
          width: double.infinity,
          child: Column(
            children: <Widget>[
              DecoratedBox(
                  decoration: BoxDecoration(

                      gradient: LinearGradient(colors:[Colors.red,Colors.orange[700]]), //背景渐变
                      borderRadius: BorderRadius.circular(3.0), //3像素圆角
                      boxShadow: [ //阴影
                        BoxShadow(
                            color:Colors.black54,
                            offset: Offset(2.0,2.0),
                            blurRadius: 4.0
                        )
                      ]
                  ),
                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
                    child: Text("Login", style: TextStyle(color: Colors.white),),
                  )
              ),
            ],
          ),
        ));
  }
}
