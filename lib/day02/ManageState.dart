import 'package:flutter/material.dart';
import 'package:flutter_app/uitl/screenutil.dart';

import 'TapboxA.dart';
import 'TapboxB.dart';
import 'TapboxC.dart';

/// @author heke
/// @Email  hekescott@qq.com
/// @change
/// @chang time 2020/2/25 0025 6:37
/// @describe
/// 路由  https://m.51kcwc.com/app?apppath=org_label_manage  [Router.R_ORG_LABEL_MANAGE]
class ManageState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ManageState();
  }
}

class _ManageState extends State<ManageState> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("状态管理"),
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
                    Text("自身管理"),
                    TapboxA(),
                    Text("父Widget管理子Widget的状态"),
                    ParentWidget(),
                    Text("混合状态管理"),
                    ParentWidgetC(),
                    Text("自身管理"),
                    TapboxA(),
                    Text("父Widget管理子Widget的状态"),
                    ParentWidget(),
                    Text("混合状态管理"),
                    ParentWidgetC(),
                  ],
                )
            )
        )
        )
    );
  }
}
