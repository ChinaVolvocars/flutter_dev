import 'package:flutter/material.dart';

class GesturePage extends StatefulWidget {
  @override
  gesture createState() => gesture();
}

class gesture extends State<GesturePage> {
  String pringString = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('手势'),
      ),
      body: FractionallySizedBox(
        widthFactor: 1,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () => _printMsg('点击'),
                  onDoubleTap: () => _printMsg('双击'),
                  onLongPress: () => _printMsg('长按'),
                  onPanCancel: () => _printMsg('取消'),
                  onTapUp: (details) => _printMsg('松开'),
                  onTapDown: (details) => _printMsg('按下'),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(color: Colors.blueGrey),
                    child: Text('点我'),
                  ),
                ),
                Text(pringString),
              ],
            )
          ],
        ),
      ),
    );
  }

  _printMsg(String msg) {
    setState(() {
      pringString = pringString + ',$msg';
    });
  }
}
