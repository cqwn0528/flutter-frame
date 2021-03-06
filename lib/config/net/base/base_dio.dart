import 'package:dio/dio.dart';
import 'package:frame_master/config/net/dio/dio_cookie.dart';
import 'package:frame_master/config/net/dio/dio_interceptors.dart';

import '../http_url.dart';

/// @time 2020/9/1 9:21 AM
/// @author gyy
/// @describe: base dio

class BaseDio {
  Dio _dio;
  BaseOptions _baseOptions;

  Dio initDio() {
    _baseOptions = BaseOptions();
    _baseOptions.baseUrl = BaseUrl.hostUrl;
    _baseOptions.connectTimeout = 5000;
    _baseOptions.contentType = "application/json";
    _baseOptions.headers = {
      ///添加请求头
    };
    //限制发送时间
    _baseOptions.sendTimeout = 5000;
    //此时间内未请求到数据 会抛出异常
    _baseOptions.receiveTimeout = 5000;
    //返回值类型
    _baseOptions.responseType = ResponseType.json;

    _dio = Dio(_baseOptions);
    //添加拦截器
    _dio.interceptors.add(DioInterceptors.dioInterceptors());
    _dio.interceptors.add(DioCookie.dioCookie());

    return _dio;
  }
}
