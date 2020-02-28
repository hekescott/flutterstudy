import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/uitl/screenutil.dart';

import 'TextFieldFocusDemo.dart';

/// @author heke
/// @Email  hekescott@qq.com
/// @change
/// @chang time 2020/2/25 0025 6:37
/// @describe
/// 路由  https://m.51kcwc.com/app?apppath=org_label_manage  [Router.R_ORG_LABEL_MANAGE]
class TextFieldFormDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextFieldFormDemoState();
  }
}

class _TextFieldFormDemoState extends State<TextFieldFormDemo> {

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Txt样式"),
        ),
        body: Scrollbar(
            child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsetsDirectional.only(
                        top: ScreenUtil.getInstance().setWidth(20),
                        start: ScreenUtil.getInstance().setWidth(20)),
                    child: Column(
                      children: <Widget>[

                      ],
                    )))));
  }

}
