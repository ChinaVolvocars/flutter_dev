import 'package:flutter/material.dart';

class ContainerLayoutWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container 布局的使用'),
      ),
      body: Container(
        
        color: Colors.blue,
        height: 260,
        width: 360,
        padding: EdgeInsets.fromLTRB(15, 15, 30, 50),
        alignment: Alignment.bottomCenter,
        child: Text('布局',
            style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.deepOrange,
                fontSize: 25)),
        // transform: Matrix4.rotationY(0.8),
      ),
    );
  }
}
