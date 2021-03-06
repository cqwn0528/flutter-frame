import 'package:flutter/material.dart';
import 'package:frame_master/export/export_util.dart';
import 'package:frame_master/export/export_view.dart';

/// @time 2020/8/28 12:06 PM
/// @author gyy
/// @describe: NavigatePage

class NavigatePage extends BaseFulWidget {
  @override
  BaseFulState<StatefulWidget> getBaseFulState() => _NavigatePageState();
}

class _NavigatePageState extends BaseFulState<NavigatePage> {
  @override
  initBuild() => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: GestureDetector(
            onTap: () {
              ToastUtil.showToast(" ");
            },
            child: Text("首页"),
          ),
        ),
      );
}
