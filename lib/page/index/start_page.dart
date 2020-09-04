import 'package:flutter/material.dart';
import 'package:frame_master/page/index/provider/start_provider.dart';
import 'package:frame_master/serve/base/base_ful_widget.dart';
import 'package:frame_master/serve/base/base_widget.dart';
import 'package:frame_master/util/get_it_util.dart';
import 'package:frame_master/util/screen_util.dart';
import 'package:frame_master/util/system_util.dart';

/// @time 2020/8/28 12:06 PM
/// @author gyy
/// @describe: StartPage

class StartPage extends BaseFulWidget {
  @override
  BaseFulState<StatefulWidget> getBaseFulState() => _StartState();
}

class _StartState extends BaseFulState<StartPage> with WidgetsBindingObserver {
  StartProvider _startProvider = getIt.get<StartProvider>();

  GestureDetector ges1, ges2;

  @override
  initStates() {
    _startProvider.initAdvert(context);
  }

  @override
  buildInit() {
    _startProvider.initScreens(context);
  }

  @override
  initBuild() => BaseWidget.scaffold(appBar: AppBar(), child: _startView());

  _startView() => Container(
        width: getScreenWidth(),
        height: getScreenHeight(),
        child: ges1 = GestureDetector(
          onTap: () {
            bindListener(ges1.key);
          },
          child: Center(
            child: Text(getString().appName4),
          ),
        ),
      );

  @override
  bindListener(Key key) {
    if (ges1.key == key) {}
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
  }
}
