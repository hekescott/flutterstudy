import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/uitl/screenutil.dart';

/// @author heke
/// @Email  hekescott@qq.com
/// @change
/// @chang time 2020/2/25 0025 6:37
/// @describe
/// 路由  https://m.51kcwc.com/app?apppath=org_label_manage  [Router.R_ORG_LABEL_MANAGE]
class TextFieldFocusDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextFieldFocusDemoState();
  }
}

class _TextFieldFocusDemoState extends State<TextFieldFocusDemo> {
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  void initState() {
    // TODO: implement initState
    focusNode1.addListener((){
      print("focusNode1=="+focusNode1.hasFocus.toString());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("textfield焦点"),
        ),
        body: Scrollbar(
            child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsetsDirectional.only(
                        top: ScreenUtil.getInstance().setWidth(20),
                        start: ScreenUtil.getInstance().setWidth(20)),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          autofocus: true,
                          focusNode: focusNode1, //关联focusNode1
                          decoration: InputDecoration(labelText: "input1"),
                        ),
                        TextField(
                          focusNode: focusNode2, //关联focusNode2
                          decoration: InputDecoration(labelText: "input2"),
                        ),
                        RaisedButton(
                          child: Text("移动焦点"),
                          onPressed: () {
                            //将焦点从第一个TextField移到第二个TextField
                            // 这是一种写法 FocusScope.of(context).requestFocus(focusNode2);
                            // 这是第二种写法
                            if(null == focusScopeNode){
                              focusScopeNode = FocusScope.of(context);
                            }
                            focusScopeNode.requestFocus(focusNode2);
                          },
                        ),
                        RaisedButton(
                          child: Text("隐藏键盘"),
                          onPressed: () {
                            // 当所有编辑框都失去焦点时键盘就会收起
                            focusNode1.unfocus();
                            focusNode2.unfocus();
                          },
                        ),

                      ],
                    )))));
  }
}
