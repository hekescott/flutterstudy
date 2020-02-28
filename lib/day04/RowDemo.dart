/// @author heke
/// @Email  hekescott@qq.com
/// @change
/// @chang time 2020/2/28 0028 16:06
/// @describe
/// 路由  https://m.51kcwc.com/app?apppath=org_label_manage  [Router.R_ORG_LABEL_MANAGE]
import 'package:flutter/material.dart';
import 'package:flutter_app/uitl/screenutil.dart';

class RowDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RowDemoState();
  }
}

class _RowDemoState extends State<RowDemo> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("ProgressIndicatorDemo学习"),
        ),
        body: Scrollbar(
            child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsetsDirectional.only(
                        top: ScreenUtil.getInstance().setWidth(20),
                        start: ScreenUtil.getInstance().setWidth(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(" hello world "),
                            Text(" I am Jack "),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(" hello world "),
                            Text(" I am Jack "),
                          ],
                        ),
                        Row(


                          mainAxisSize: MainAxisSize.max,
                          //mainAxisAlignment 表示子组件在Row所占用的水平空间内对齐方式
                          mainAxisAlignment: MainAxisAlignment.start,
                          //textDirection：表示水平方向子组件的布局顺序
                          // TextDirection.rtl右
                          textDirection: TextDirection.rtl,
                          children: <Widget>[
                            Text(" hello world 23"),
                            Text(" I am Jack "),
                          ],
                        ),
                        Row(
                          //crossAxisAlignment：表示子组件在纵轴方向的对齐方式
                          crossAxisAlignment: CrossAxisAlignment.end,
                         // verticalDirection：表示Row纵轴（垂直）的对齐方向
                          // VerticalDirection.down从上到下
                          verticalDirection: VerticalDirection.down,
                          children: <Widget>[
                            Text(" hello world ", style: TextStyle(fontSize: 30.0),),
                            Text(" I am Jack "),
                          ],
                        ),
                      ],
                    )))));
  }
}
