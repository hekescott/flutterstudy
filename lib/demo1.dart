import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewRute1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(child: Image.asset('graphics/icon_tj70_zbb@3x.png')),
    );

  }




  static _NewRute1jump(BuildContext context) {
    print('143434');
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return NewRute1();
    }));


  }
}
