import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/uitl/screenutil.dart';

import 'ProgressRoute.dart';

/// @author heke
/// @Email  hekescott@qq.com
/// @change
/// @chang time 2020/2/25 0025 6:37
/// @describe
/// 路由  https://m.51kcwc.com/app?apppath=org_label_manage  [Router.R_ORG_LABEL_MANAGE]
class ProgressIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProgressIndicatorDemoState();
  }
}

class _ProgressIndicatorDemoState extends State<ProgressIndicatorDemo> {
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
// 模糊进度条(会执行一个动画)
                        LinearProgressIndicator(
                          backgroundColor: Colors.grey[200],
                          valueColor: AlwaysStoppedAnimation(Colors.blue),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: //进度条显示50%
                              LinearProgressIndicator(
                            backgroundColor: Colors.grey[200],
                            valueColor: AlwaysStoppedAnimation(Colors.blue),
                            value: .5,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.grey[200],
                            valueColor: AlwaysStoppedAnimation(Colors.blue),
                          ),
                        ),
                        Container(
                          height: ScreenUtil.getInstance().setWidth(200),
                          width: ScreenUtil.getInstance().setWidth(200),
                          margin: EdgeInsets.only(top: 20),
                          child:CircularProgressIndicator(
                            backgroundColor: Colors.grey[200],
                            valueColor: AlwaysStoppedAnimation(Colors.blue),

                          ),
                        ),               Container(
                          height: ScreenUtil.getInstance().setWidth(200),
                          width: ScreenUtil.getInstance().setWidth(200),
                          margin: EdgeInsets.only(top: 20),
                          child: ProgressRoute(),
                        ),
                      ],
                    )))));
  }
}
