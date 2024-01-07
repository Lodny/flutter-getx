import 'package:ex_getx/src/page/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'first.dart';

class GetXArgumentsPage extends StatelessWidget {
  const GetXArgumentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Arguments Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${(Get.arguments as UserInfo).name} - ${(Get.arguments as UserInfo).age.toString()}'),
            ElevatedButton(
              onPressed: () => Get.back(),
              child: Text('뒤로 이동'),
            ),
            ElevatedButton(
              // onPressed: () => Get.to(Home()),
              onPressed: () => Get.offAll(Home()),
              child: Text('홈 이동'),
            ),
            ElevatedButton(
              // onPressed: () => Get.to(Home()),
              onPressed: () => Get.offAllNamed('/'),
              child: Text('홈 이동(Named)'),
            ),
          ],
        ),
      ),
    );
  }
}
