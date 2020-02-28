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
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form表单"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Form(
          key: _formKey, //设置globalKey，用于后面获取FormState
          autovalidate: true, //开启自动校验
          child: Column(
            children: <Widget>[
              TextFormField(
                  autofocus: true,
                  controller: _unameController,
                  decoration: InputDecoration(
                      labelText: "用户名",
                      hintText: "用户名或邮箱",
                      icon: Icon(Icons.person)),
                  // 校验用户名
                  validator: (v) {
                    return v.trim().length > 0 ? null : "用户名不能为空";
                  }),
              TextFormField(
                  controller: _pwdController,
                  decoration: InputDecoration(
                      labelText: "密码",
                      hintText: "您的登录密码",
                      icon: Icon(Icons.lock)),
                  obscureText: true,
                  //校验密码
                  validator: (v) {
                    return v.trim().length > 5 ? null : "密码不能少于6位";
                  }),
              // 登录按钮
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: buildRaisedButton2(),
//                      child: buildRaisedButton1(context),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


  //正确方式
  Builder buildRaisedButton2() {
    return  Builder(builder: (context){
      return RaisedButton(
        padding: EdgeInsets.all(15.0),
        child: Text("登录正确方式"),
        color: Theme.of(context).primaryColor,
        textColor: Colors.white,
        onPressed: () {
          //由于本widget也是Form的子代widget，所以可以通过下面方式获取FormState
          if (Form.of(context).validate()) {
            //验证通过提交数据
            print("buildRaisedButton2 ok");
          }
        },
      );
    });
  }



  RaisedButton buildRaisedButton1(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.all(15.0),
      child: Text("登录"),
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
      onPressed: () {
        //在这里不能通过此方式获取FormState，context不对
        //此处的context为TextFieldFormDemo的context，
        // 而Form.of(context)是根据所指定context向根去查找，
        // 而FormState是在TextFieldFormDemo的子树中，所以不行
        // print(Form.of(context));

        // 通过_formKey.currentState 获取FormState后，
        // 调用validate()方法校验用户名密码是否合法，校验
        // 通过后再提交数据。
        if ((_formKey.currentState as FormState).validate()) {
          //验证通过提交数据
          print("buildRaisedButton ok");
        }
      },
    );
  }


}
