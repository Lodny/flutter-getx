import 'package:ex_getx/src/page/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXUserPage extends StatelessWidget {
  const GetXUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX User Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${Get.parameters['uid']} - ${Get.parameters['name']} - ${Get.parameters['age']}'),
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