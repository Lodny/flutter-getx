import 'package:ex_getx/src/page/normal/first.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx/first.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('라우트 관리 홈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('일반적인 라우트'),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => FirstPage())
                );
              },
            ),
            ElevatedButton(
              child: Text('Getx 라우트'),
              onPressed: () => Get.to(GetXFirstPage()),
            ),
          ],
        ),
      ),
    );
  }
}
