import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/uitl/screenutil.dart';

/// @author heke
/// @Email  hekescott@qq.com
/// @change
/// @chang time 2020/2/25 0025 6:37
/// @describe
/// 路由  https://m.51kcwc.com/app?apppath=org_label_manage  [Router.R_ORG_LABEL_MANAGE]
class ButtonDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ButtonDemoState();
  }
}

class _ButtonDemoState extends State<ButtonDemo> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("button学习"),
        ),
        body: Scrollbar(
            child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsetsDirectional.only(
                        top: ScreenUtil.getInstance().setWidth(20),
                        start: ScreenUtil.getInstance().setWidth(20)),
                    child: Column(
                      children: <Widget>[
                        RaisedButton(
                          child: Text("漂浮按钮"),
                          onPressed: () {
                            print("_ButtonDemoState normal被点击");
                          },
                        ),
                        FlatButton(
                          child: Text("扁平按钮"),
                          color: Colors.lightGreen[700],
                          onPressed: () {},
                        ),
                        OutlineButton(
                          child: Text("边框按钮"),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.thumb_up),
                          onPressed: () {},
                        ),
                        RaisedButton.icon(
                          icon: Icon(Icons.send),
                          label: Text("发送"),
                          onPressed: () {},
                        ),
                        OutlineButton.icon(
                          icon: Icon(Icons.add),
                          label: Text("添加"),
                          onPressed: () {},
                        ),
                        FlatButton.icon(
                          icon: Icon(Icons.info),
                          label: Text("详情"),
                          onPressed: () {},
                        ),
                        FlatButton(
                          color: Colors.blue,
                          highlightColor: Colors.blue[700],
                          colorBrightness: Brightness.dark,
                          splashColor: Colors.grey,
                          child: Text("Submit"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          onPressed: () {},
                        ),
                        RaisedButton(
                          elevation: 2.0,//正常阴影
                          disabledElevation: 0.0,//禁用阴影
                          highlightElevation: 8.0,//按下阴影
                          color: Colors.blue,
                          highlightColor: Colors.blue[700],
                          colorBrightness: Brightness.dark,
                          splashColor: Colors.grey,
                          child: Text("Submit"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          onPressed: () {},
                        ),
                      ],
                    )))));
  }
}
