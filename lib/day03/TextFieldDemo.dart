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
class TextFieldDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextFieldDemoState();
  }
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  String name;
  String pwd;
  TextEditingController _unameController = TextEditingController();
  TextEditingController _selectionController = TextEditingController();

  @override
  void initState() {
    _unameController.addListener(() {
      print("pwd" + _unameController.text);
    });
    _selectionController.text = "hello world";
    _selectionController.selection = TextSelection(
        baseOffset: 2, extentOffset: _selectionController.text.length);
    super.initState();
  }

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
                        TextField(
                          autofocus: true,
                          onChanged: (val) {
                            name = val;
                            print("onChange: $val");
                          },
                          decoration: InputDecoration(
                              labelText: "用户名",
                              hintText: "用户名或邮箱",
                              prefixIcon: Icon(Icons.person)),
                        ),
                        TextField(
                          controller: _unameController,
                          decoration: InputDecoration(
                              labelText: "密码",
                              hintText: "您的登录密码",
                              prefixIcon: Icon(Icons.lock)),
                          obscureText: true,
                        ),
                        RaisedButton(
                          onPressed: () {
                            print("name==" +
                                name +
                                "pwd==" +
                                _unameController.text);
                          },
                          child: Text("登录"),
                        ),
                        TextField(
                          controller: _selectionController,
                        ),
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(context,
                                new MaterialPageRoute(builder: (context) {
                              return TextFieldFocusDemo();
                            }));
                          },
                          child: Text("控制焦点"),
                        ),
                        getThemeWidget(),
                        getContaintWidget(),
                      ],
                    )))));
  }

  Widget getThemeWidget() {
    return Theme(
        data: Theme.of(context).copyWith(
            primaryColor: Colors.blue,
            hintColor: Colors.grey[200], //定义下划线颜色
            focusColor: Colors.blue,
            hoverColor:Colors.blue ,
            inputDecorationTheme: InputDecorationTheme(
                labelStyle: TextStyle(color: Colors.grey), //定义label字体样式
                hintStyle:
                    TextStyle(color: Colors.grey, fontSize: 14.0) //定义提示文本样式
                )),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  labelText: "theme用户名",
                  hintText: "用户名或邮箱",
                  prefixIcon: Icon(Icons.person)),
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: "theme密码",
                  hintText: "您的登录密码",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 13.0)),
              obscureText: true,
            )
          ],
        ));
  }
  FocusNode focusNode2 = new FocusNode();
  Widget getContaintWidget() {

    return Container(
      child: TextField(
          keyboardType: TextInputType.emailAddress,
          focusNode: focusNode2,
          decoration: InputDecoration(
              labelText: "ContaintEmail",
              hintText: "电子邮件地址",
              prefixIcon: Icon(Icons.email),
              border: InputBorder.none //隐藏下划线
              )),
      decoration: BoxDecoration(
          // 下滑线浅灰色，宽度1像素
          border: Border(
              bottom: BorderSide(
                  color: focusNode2.hasFocus ? Colors.blue : Colors.grey[200],
                  width: 1.0))),
    );
  }
}
