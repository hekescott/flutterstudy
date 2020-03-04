/// @author heke
/// @Email  hekescott@qq.com
/// @change
/// @chang time 2020/2/28 0028 16:05
/// @describe
/// 路由  https://m.51kcwc.com/app?apppath=org_label_manage  [Router.R_ORG_LABEL_MANAGE]
import 'package:flutter/material.dart';
import 'package:flutter_app/uitl/screenutil.dart';

import 'ColumnDemo.dart';
import 'ColumnDemo2.dart';
import 'FlexDemo.dart';
import 'FlowDemo.dart';
import 'RowDemo.dart';
import 'WrapDemo.dart';

class LayoutDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LayoutDemoState();
  }
}

class _LayoutDemoState extends State<LayoutDemo> {
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
                      children: <Widget>[
                        OutlineButton(
                          child: Text("RowDemo演示"),
                          onPressed: _jumpRowDemo,
                        ),
                        OutlineButton(
                          child: Text("ColumnDemo演示"),
                          onPressed: _jumpColumnDemo,
                        ),
                        OutlineButton(
                          child: Text("ColumnDemo2演示垂直空间占用"),
                          onPressed: _jumpColumnDemo2,
                        ),
                        OutlineButton(
                          child: Text("ColumnDemo3演示垂直空间占用"),
                          onPressed: _jumpColumnDemo3,
                        ),
                        OutlineButton(
                          child: Text("弹性布局Flex和Expand"),
                          onPressed: _jumpFlexDemo,
                        ),
                        OutlineButton(
                          child: Text("流式布局wrap"),
                          onPressed: _jumpWrapDemo,
                        ),        OutlineButton(
                          child: Text("流式布局Flow"),
                          onPressed: _jumpFlowDemo,
                        ),
                      ],
                    )))));
  }

  _jumpRowDemo() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return RowDemo();
    }));
  }

  _jumpColumnDemo() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return ColumnDemo();
    }));
  }

  _jumpColumnDemo2() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return ColumnDemo2();
    }));
  }

  _jumpColumnDemo3() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return ColumnDemo3();
    }));
  }

  _jumpFlexDemo() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return FlexDemo();
    }));
  }

  _jumpWrapDemo() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return WrapDemo();
    }));
  }  _jumpFlowDemo() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return FlowDemo();
    }));
  }
}
