import 'package:frame_master/page/index/navigate_page.dart';

/// @time 2020/9/1 9:21 AM
/// @author gyy
/// @describe: 静态路由

class RoutePath {
  static var appRoute = {
    'page/inlet/my_app': (context) => NavigatePage(),
  };
}
