import 'package:flutter/material.dart';

import 'demo1.dart';
import 'package:english_words/english_words.dart';



class Newroute2 extends StatelessWidget {
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

    Future.wait([
      Future.delayed(new Duration(seconds: 4), () {
        return "9s任务";
      }),
      Future.delayed(new Duration(seconds: 1), () {
        return "1s任务";
      })
    ]).then((result) {
      print(result[0] + result[1]);
    }).catchError((e) {
      print(e);
    });

    print(sayMM('美12女', 'hello'));
    print(sayMM('美女', 'hello', 'smoke signal'));
    //调用函数时，可以使用指定命名参数。例如：paramName: value
    print(sayGG(from: '帅哥', msg: 'hello'));
    print(sayGG(from: '帅哥', msg: 'hello', device: 'smoke signa'));

    void execute(var callback) {
      callback();
    }

    execute(() => print("xxx"));

    var say = (str) {
      print(str);
    };
    say("hi world");

    dynamic a = '123';
    Object b = '13';

    bool isNo11(int num) => num == 11;

    print(isNo11(11));
//    print(b.length);
    print(a.length);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }

  String sayMM(String from, String msg, [String device]) {
    var result = '$from says $msg';
    if (device != null) {
      result = '$result with a $device';
    }
    return result;
  }

  //定义函数时，使用{param1, param2, …}，用于指定命名参数。例如：
  String sayGG({String from, String msg, String device}) {
    var result = '$from says $msg';
    if (device != null) {
      result = '$result with a $device';
    }
    return result;
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    final wordPair = new WordPair.random();
    debugDumpApp();
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical·
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
        OutlineButton(


        child: Text("normal"),
        onPressed:  _jump,
    ),

    Text(
    'You have pushed the button 566 many times:',
    ),
    Text(
    '$_counter',
    style: Theme.of(context).textTheme.display1,
    ),
    ],
    ),
    ),
    floatingActionButton: FloatingActionButton(
    onPressed: _incrementCounter,
    tooltip: 'Increment',
    child: Icon(Icons.add),
    ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  void _jump(){
    print('143434');
    Navigator.push(context,new MaterialPageRoute(
        builder:(context){
          return NewRute1();
        }

    ));
  }
}
