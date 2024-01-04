import 'package:flutter/material.dart';


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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Text('Flutter Demo Home Page'),
    );
  }
}
