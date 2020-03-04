/// @author heke
/// @Email  hekescott@qq.com
/// @change
/// @chang time 2020/2/28 0028 16:06
/// @describe
/// 路由  https://m.51kcwc.com/app?apppath=org_label_manage  [Router.R_ORG_LABEL_MANAGE]
import 'package:flutter/material.dart';
import 'package:flutter_app/uitl/screenutil.dart';

class ColumnDemo2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ColumnDemo2State();
  }
}

class _ColumnDemo2State extends State<ColumnDemo2> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("ProgressIndicatorDemo学习"),
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
                  children: <Widget>[
                    Container(
                      color: Colors.red,
                      child: Column(
                        mainAxisSize: MainAxisSize.max, //无效，内层Colum高度为实际高度
                        children: <Widget>[
                          Text("hello world "),
                          Text("I am Jack "),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Text('如果Row里面嵌套Row，或者Column里面再嵌套Column，'
                  '那么只有对最外面的Row或Column会占用尽可能大的空间'
                  '里面Row或Column所占用的空间为实际大小'),
            )
          ],
        ));
  }
}

//如果要让里面的Column占满外部Column，可以使用Expanded 组
class ColumnDemo3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ColumnDemo3State();
  }
}

class _ColumnDemo3State extends State<ColumnDemo3> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("ProgressIndicatorDemo学习"),
        ),
        body: Container(
            color: Colors.green,
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          color: Colors.red,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //垂直方向居中对齐
                            children: <Widget>[
                              Text("hello world "),
                              Text("I am Jack "),
                            ],
                          ),
                        ),
                      )
                    ]))));
  }
}
