import 'package:flutter/material.dart';
import 'package:flutter_app/uitl/screenutil.dart';


/// @author heke
/// @Email  hekescott@qq.com
/// @change
/// @chang time 2020/2/25 0025 6:37
/// @describe
/// 路由  https://m.51kcwc.com/app?apppath=org_label_manage  [Router.R_ORG_LABEL_MANAGE]
class SwitchAndCheckBoxDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SwitchAndCheckBoxDemoState();
  }
}

class _SwitchAndCheckBoxDemoState extends State<SwitchAndCheckBoxDemo> {
  bool _switchSelected=true; //维护单选开关状态
  bool _checkboxSelected=true;//维护复选框状态
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("button学习"),
        ),
        body:Column(
          children: <Widget>[
            Switch(
              value: _switchSelected,//当前状态
              onChanged:(value){
                //重新构建页面
                setState(() {
                  _switchSelected=value;
                });
              },
            ),
            Checkbox(
              value: _checkboxSelected,
              activeColor: Colors.red, //选中时的颜色
              onChanged:(value){
                setState(() {
                  _checkboxSelected=value;
                });
              } ,
            )

          ],
        ));
  }
}
