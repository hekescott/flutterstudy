/// @author heke
/// @Email  hekescott@qq.com
/// @change
/// @chang time 2020/2/28 0028 16:06
/// @describe
/// 路由  https://m.51kcwc.com/app?apppath=org_label_manage  [Router.R_ORG_LABEL_MANAGE]
import 'package:flutter/material.dart';
import 'package:flutter_app/uitl/screenutil.dart';

class ColumnDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ColumnDemoState();
  }
}

class _ColumnDemoState extends State<ColumnDemo> {
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
                    child: Container(
                        color: Colors.blue,
                        child: Column(
                      //在垂直方向占用尽可能多的空间
                      mainAxisSize: MainAxisSize.max,
                      //crossAxisAlignment：表示子组件在横轴方向的对齐方式
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("hi"),
                        Text("world"),
                        //撑满横轴居中
                        buildCenter(),
                        //撑满横轴
                        buildCenter2()
                      ],
                    ))))));
  }

  Center buildCenter() {
    return Center(
        child: Column(
          
      children: <Widget>[
        Text("hi"),
        Text("world"),
      ],
    ));
  }

  Widget buildCenter2() {
    return Container(
      color: Colors.red,
      margin: EdgeInsets.only(top: 20.0),
      child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: double.infinity),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("hi"),
              Text("world"),
            ],
          )),
    );
  }
}
