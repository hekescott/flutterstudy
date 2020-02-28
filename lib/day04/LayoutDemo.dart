/// @author heke
/// @Email  hekescott@qq.com
/// @change
/// @chang time 2020/2/28 0028 16:05
/// @describe   
/// 路由  https://m.51kcwc.com/app?apppath=org_label_manage  [Router.R_ORG_LABEL_MANAGE]
import 'package:flutter/material.dart';
import 'package:flutter_app/uitl/screenutil.dart';

import 'RowDemo.dart';

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
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)
      ..init(context);
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
                          onPressed:_jumpImage,
                        ),
                      ],
                    )))));
  }

  _jumpImage() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return RowDemo();
    }));
  }
}