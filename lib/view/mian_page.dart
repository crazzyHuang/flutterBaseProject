import 'dart:convert';

import 'package:demo1/base/http/http.dart';
import 'package:demo1/common/urls.dart';
import 'package:demo1/view/widdget/douban_appbar.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'widdget/douban_appbar.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();

    //此处是 http 工具 返回 response 的情况下，

    // Response response =
    //     await Http.getInstance().get("http://www.baidu.com", {});

    // print(response.statusCode.toString());
    // print(response.data.toString());
  }

  void getMockData() {
    Http.getInstance()
        .get(Urls.hotdianying)
        .then((value) => {
              LogUtil.v(value.toString(), tag: "请求"),
            })
        .catchError((e) => {
              LogUtil.v(e.toString()),
            })
        .whenComplete(() => {
              LogUtil.v("请求完成"),
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DouBanAppBar(canBack: false, title: "首页").build(context),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Center(
                  child: TextButton(
                    child: Text("点击获取数据"),
                    onPressed: () {
                      getMockData();
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
