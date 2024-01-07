import 'package:ex_getx/src/page/normal/second.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('다음페이지 이동'),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => SecondPage())
                );
              },
            ),
            ElevatedButton(
              child: Text('다음페이지 이동(Named)'),
              onPressed: () => Navigator.of(context).pushNamed('/second'),
            ),
          ],
        ),
      ),
    );
  }
}
