import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:flutter_dev/app/LoginPage.dart';
import 'package:flutter_dev/layout/ContainerLayoutWidgets.dart';
import 'package:flutter_dev/layout/GesturePage.dart';

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
              child: Text('ContainerLayoutWidgets'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ContainerLayoutWidgets()));
              },
            ),
            RaisedButton(
              child: Text('手势'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GesturePage()));
              },
            ),
            RaisedButton(
              child: Text('登陆'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
