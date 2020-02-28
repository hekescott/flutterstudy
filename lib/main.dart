import 'package:flutter/material.dart';
import 'package:flutter_app/uitl/screenutil.dart';

import 'day01/01.dart';
import 'day01/StateLifecyle.dart';
import 'day02/ManageState.dart';
import 'day02/TapboxA.dart';
import 'day02/cupinfo.dart';
import 'day03/ButtonDemo.dart';
import 'day03/ImageDemo.dart';
import 'day03/SwitchAndCheckBoxDemo.dart';
import 'day03/TextFieldDemo.dart';
import 'day03/TextStyles.dart';
import 'demo1.dart';

import 'maintwo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
//    Future.delayed(new Duration(seconds: 2), () {
//      return '延迟2s';
//    }).then((data) {
//      print(data);
//    });

//    Future.delayed(new Duration(seconds: 2), () {
//      throw new AssertionError("error");
//    }).then((data) {
//      //执行成功会走到这里
//      print("success");
//    }).catchError((e) {
//      //执行失败会走到这里
//      print("failed");
//      print(e);
//    });

//    Future.delayed(new Duration(seconds: 2), () {
//      throw new AssertionError("error");
//    }).then((data) {
//      //执行成功会走到这里
//      print("success");
//    }, onError: (e) {
//      print("failed onError");
//      print(e);
//    }).whenComplete((){
//      print("finally");
//    });
//
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          OutlineButton(
            child: Text("基础"),
            onPressed: _jumpNewroute2,
          ),
          OutlineButton(
            child: Text("图片加载"),
            onPressed: _jump,
          ),
          OutlineButton(
            child: Text("StatelessWidget "),
            onPressed: _jumpEcho,
          ),
          OutlineButton(
            child: Text("State生命周期 "),
            onPressed: _jumpLifeCyle,
          ),
          OutlineButton(
            child: Text("Cpuinfo"),
            onPressed: _jumpCupinfo,
          ),
          OutlineButton(
            child: Text("Widget状态管理"),
            onPressed: _jumpWidgetManageSelfSate,
          ),   OutlineButton(
            child: Text("txt样式"),
            onPressed: _jumpWidgetTextSytles,
          ),
          OutlineButton(
            child: Text("按钮demo"),
            onPressed: _jumpButton,
          ),  OutlineButton(
            child: Text("Imagedemo"),
            onPressed: _jumpImage,
          ),
          OutlineButton(
            child: Text("复选框"),
            onPressed: _jumpCheckbox,
          ),  OutlineButton(
            child: Text("输入框"),
            onPressed: _jumpTextField,
          ),
        ],
      ),
    );
  }

  _jump() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return NewRute1();
    }));
  }

  _jumpEcho() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return Echo(text: "StatelessWidget");
    }));
  }

  _jumpNewroute2() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return Newroute2();
    }));
  }

  _jumpLifeCyle() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return CounterWidget();
    }));
  }

  _jumpCupinfo() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return CupertinoTestRoute();
    }));
  }

  _jumpWidgetManageSelfSate() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return ManageState();
    }));
  }
  _jumpWidgetTextSytles() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return TextSytles();
    }));
  }
  _jumpButton() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return ButtonDemo();
    }));
  }  _jumpImage() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return ImageDemo();
    }));
  }
  _jumpCheckbox() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return SwitchAndCheckBoxDemo();
    }));
  }  _jumpTextField() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return TextFieldDemo();
    }));
  }
}
