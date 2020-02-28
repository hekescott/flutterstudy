/// @author heke
/// @Email  hekescott@qq.com
/// @change
/// @chang time 2020/2/24 0024 14:13
/// @describe   
/// 路由  https://m.51kcwc.com/app?apppath=org_label_manage  [Router.R_ORG_LABEL_MANAGE]
import 'package:flutter/cupertino.dart';

class CupertinoTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cupertino Demo"),
      ),
      child: Center(
        child: CupertinoButton(
            color: CupertinoColors.activeBlue,
            child: Text("Press"),
            onPressed: () {}
        ),
      ),
    );
  }
}