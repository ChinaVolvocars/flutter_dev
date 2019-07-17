import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:flutter_dev/layout/ContainerLayoutWidgets.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第二个页面"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            BackButton(),
            Text('文本1'),
            Text('文本2'),
            Text('文本3'),
            Text('文本1'),
            Text('文本2'),
            Text('文本3'),
            RaisedButton(
              child: Text('打开下一个页面'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ContainerLayoutWidgets()));
              },
            ),
          ],
        ),
      ),
      // body: Center(
      //   child: RaisedButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     child: Text('返回上一个页面'),
      //   ),
      // ),
    );
  }
}
