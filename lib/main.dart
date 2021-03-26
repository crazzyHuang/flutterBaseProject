import 'package:demo1/base/http2/http_utils.dart';
import 'package:demo1/view/mian_page.dart';
import 'package:dio/dio.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';

import 'base/http/http.dart';

void main() {
  HttpUtils.init(baseUrl: 'http://127.0.0.1:7001');

  // 初始化日志打印工具
  LogUtil.init(tag: "davidhuang", isDebug: true, maxLen: 180);

  // 初始化http 网络请求工具
  // Http.getInstance().setConfig(new HttpConfig(
  //     baseOptions: BaseOptions(baseUrl: 'http://127.0.0.1:7001')));
  // Http.openDebug();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: MainPage(),
    );
  }
}
