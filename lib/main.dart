import 'package:ex_getx/src/page/getx/arguments.dart';
import 'package:ex_getx/src/page/getx/first.dart';
import 'package:ex_getx/src/page/getx/second.dart';
import 'package:ex_getx/src/page/getx/user.dart';
import 'package:ex_getx/src/page/home.dart';
import 'package:ex_getx/src/page/normal/first.dart';
import 'package:ex_getx/src/page/normal/second.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


// Todo
// 1. 기본 페이지 라우팅 (Navigator와 차이)
// 2. Route 선언 (기존 방식과 차이)
// 3. Named 페이지 라이팅 (Navigator와 차이)
// 4. 페이지 전환 animation 적용
// 5. arguments 전달
// 6. 동적 링크 사용

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: Home(),
      initialRoute: '/',
      // routes: {
      //   '/': (context) => Home(),
      //   '/first': (context) => FirstPage(),
      //   '/second': (context) => SecondPage(),
      // },
      getPages: [
        GetPage(name: '/', page: () => Home(), transition: Transition.zoom),
        GetPage(name: '/first', page: () => GetXFirstPage(), transition: Transition.zoom),
        GetPage(name: '/second', page: () => GetXSecondPage(), transition: Transition.zoom),
        GetPage(name: '/arguments', page: () => GetXArgumentsPage(), transition: Transition.zoom),
        GetPage(name: '/user/:uid', page: () => GetXUserPage(), transition: Transition.zoom),
      ],
    );
  }
}


