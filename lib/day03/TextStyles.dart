import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/uitl/screenutil.dart';

/// @author heke
/// @Email  hekescott@qq.com
/// @change
/// @chang time 2020/2/25 0025 6:37
/// @describe
/// 路由  https://m.51kcwc.com/app?apppath=org_label_manage  [Router.R_ORG_LABEL_MANAGE]
class TextSytles extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextSytleState();
  }
}

class _TextSytleState extends State<TextSytles> {

  @override
  Widget build(BuildContext context) {
    TapGestureRecognizer myrecognizer = new TapGestureRecognizer();
    myrecognizer.onTap=(){
      print("myrecognizer https://flutterchina.club");

    };
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
                        Text(
                          "Hello world7877",
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Hello world! I'm Jack. " * 4,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "Hello world",
                          textScaleFactor: 1.5,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Hello world " * 6,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Text(
                          "Hello world",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18.0,
                              height: 1.2,
                              fontFamily: "Courier",
                              background: new Paint()..color = Colors.yellow,
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.dashed),
                        ),
                        Text.rich(TextSpan(children: [
                          TextSpan(text: "Home: "),
                          TextSpan(
                            recognizer: myrecognizer,
                            text: "https://flutterchina.club",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ])),
                        DefaultTextStyle(
                          //1.设置文本默认样式
                          style: TextStyle(
                            color:Colors.red,
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.start,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("可继承文本样式"),
                              Text("I am Jack"),
                              Text("I am Jack",
                                style: TextStyle(
                                    inherit: false, //2.不继承默认样式
                                    color: Colors.grey
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )))));
  }
}
