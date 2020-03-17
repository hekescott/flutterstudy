import 'package:flutter/material.dart';

class SizeLimitConstainerDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SizeLimitConstainerDemoState();
  }
}

class _SizeLimitConstainerDemoState extends State<SizeLimitConstainerDemo> {
  @override
  Widget build(BuildContext context) {
    Widget redBox = DecoratedBox(
      decoration: BoxDecoration(color: Colors.red),
    );
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("尺寸限制类容器"),
        ),
        body: Container(
          child: SingleChildScrollView(
            //上下左右各添加16像素补白
            child: Column(
              //显式指定对齐方式为左对齐，排除对齐干扰
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ConstrainedBox(
                  constraints: BoxConstraints(
                      minWidth: double.infinity, //宽度尽可能大
                      minHeight: 50.0 //最小高度为50像素
                      ),
                  child: Container(height: 5.0, child: redBox),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(top: 10),
                  child: SizedBox(width: 80.0, height: 80.0, child: redBox),
                ),
                Container(
                    margin: EdgeInsetsDirectional.only(top: 10),
                    child: ConstrainedBox(
                      constraints:
                          //相同于BoxConstraints(minHeight: 80.0,maxHeight: 80.0,minWidth: 80.0,maxWidth: 80.0)
                          BoxConstraints.tightFor(width: 20.0, height: 80.0),
                      child: redBox,
                    )),
                ConstrainedBox(
                    constraints: BoxConstraints(minWidth: 60.0, minHeight: 100.0),  //父
                    child: UnconstrainedBox( //“去除”父级限制
                      child: ConstrainedBox(
                        constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),//子
                        child: redBox,
                      ),
                    )
                ),
//maxWidth maxHeight 混乱
                Container(
                  margin: EdgeInsetsDirectional.only(top: 10),
                  child: ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 100.0, minHeight: 20.0),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(minWidth: 100.0, minHeight: 60.0),
                        child: redBox,
                      )
                  ),
                ),




              ],
            ),
          ),
        ));
  }
}
