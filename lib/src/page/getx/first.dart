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
            ElevatedButton(
              child: Text('다음페이지 이동(Named)'),
              onPressed: () => Get.toNamed('/second'),
            ),
            ElevatedButton(
              child: Text('현재페이지 제거하고, 다음페이지 이동(Named)'),
              onPressed: () => Get.offNamed('/second'),
            ),
            ElevatedButton(
              child: Text('Arguments 전달 이동(Named)'),
              onPressed: () => Get.toNamed('/arguments', arguments: UserInfo('juice', 49)),
            ),
            ElevatedButton(
              child: Text('Parameters 전달 이동(Named)'),
              onPressed: () => Get.toNamed('/user/10?name=coco&age=45'),
            ),
          ],
        ),
      ),
    );
  }
}

class UserInfo {
  String name;
  int age;

  UserInfo(this.name, this.age);
}
