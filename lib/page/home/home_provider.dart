import 'package:dio/dio.dart';
import 'package:frame_master/export/export_util.dart';
import 'package:frame_master/export/export_view.dart';
import 'package:frame_master/page/home/home_model.dart';

/// @time 2020/8/28 5:38 PM
/// @author gyy
/// @describe: HomeProvider

class HomeProvider extends BaseProvider {
  @override
  initRequest() async {
    await HttpUtil.instance
        .getRequest(
            'https://www.devio.org/io/flutter_app/json/test_common_model.json')
        .then((Response response) {
      return HomeModel.fromJson(response.data);
    });
  }
}
