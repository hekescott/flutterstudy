/// @author heke
/// @Email  hekescott@qq.com
/// @change
/// @chang time 2020/2/28 0028 16:05
/// @describe
/// 路由  https://m.51kcwc.com/app?apppath=org_label_manage  [Router.R_ORG_LABEL_MANAGE]
import 'package:flutter/material.dart';
import 'package:flutter_app/uitl/screenutil.dart';

import 'ContainerDemo.dart';
import 'DecorateBoxDemo.dart';
import 'PaddingDemo.dart';
import 'ScaffoldDemo.dart';
import 'SizeLimitConstainerDemo.dart';
import 'TransFormDemo.dart';

class ConstainterDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ConstainterDemoState();
  }
}

class _ConstainterDemoState extends State<ConstainterDemo> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Constainter容器学习"),
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
                          child: Text("PaddingDemo演示"),
                          onPressed: _jumpPaddingDemo,
                        ),
                        OutlineButton(
                          child: Text("SizeLimitConstainerDemo演示"),
                          onPressed: _jumpSizeLimitConstainerDemo,
                        ),
                        OutlineButton(
                          child: Text("DecoratedBoxDemo演示"),
                          onPressed: _jumpDecoratedBox,
                        ),
                        OutlineButton(
                          child: Text("TransFormDemo演示"),
                          onPressed: _jumpTransFormDemo,
                        ),
                        OutlineButton(
                          child: Text("ContainerDemo演示"),
                          onPressed: _jumpContainerDemo,
                        ),
                        OutlineButton(
                          child: Text("ScaffoldDemo抽屉演示"),
                          onPressed: _jumpScaffoldDemo,
                        ),
                      ],
                    )))));
  }

  _jumpPaddingDemo() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return PaddingDemo();
    }));
  }

  _jumpSizeLimitConstainerDemo() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return SizeLimitConstainerDemo();
    }));
  }

  _jumpDecoratedBox() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return DecoratedBoxDemo();
    }));
  }

  _jumpTransFormDemo() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return TransFormDemo();
    }));
  }

  _jumpContainerDemo() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return ContainerDemo();
    }));
  }

  _jumpScaffoldDemo() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return ScaffoldDemo();
    }));
  }
}
