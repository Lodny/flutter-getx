import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'second.dart';

class GetXFirstPage extends StatelessWidget {
  const GetXFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('다음페이지 이동'),
              onPressed: () => Get.to(GetXSecondPage()),
            ),
          ],
        ),
      ),
    );
  }
}
