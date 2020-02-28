import 'package:flutter/material.dart';
import 'package:flutter_app/uitl/screenutil.dart';

/// @author heke
/// @Email  hekescott@qq.com
/// @change
/// @chang time 2020/2/24 0024 14:53
/// @describe   自身管理
/// 路由  https://m.51kcwc.com/app?apppath=org_label_manage  [Router.R_ORG_LABEL_MANAGE]
// TapboxA 管理自身状态.

//------------------------- TapboxA ----------------------------------

class TapboxA extends StatefulWidget {
  TapboxA({Key key}) : super(key: key);

  @override
  _TapboxAState createState() => new _TapboxAState();
}

class _TapboxAState extends State<TapboxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            _active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 22.0, color: Colors.white),
          ),
        ),
        width: ScreenUtil.getInstance().setWidth(250),
        height: ScreenUtil.getInstance().setHeight(200),
        decoration: new BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}