import 'package:flutter/material.dart';

class LessGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'statelessWiget 与基础组件',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('tatelessWiget 与基础组件'),
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text.rich(
                TextSpan(
                  text: 'Hello', // default text style

                  children: <TextSpan>[
                    TextSpan(
                        text: ' beautiful ',
                        style: TextStyle(fontStyle: FontStyle.italic)),
                    TextSpan(
                        text: 'world',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Text(
                'i m  text ',
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.blue),
              ),
              Icon(
                Icons.add,
                color: Colors.pink,
                size: 30.0,
                textDirection: TextDirection.ltr,
                semanticLabel: 'nihao',
              ),
              CloseButton(),
              BackButton(),
              Chip(label: new Text('fdafa'), avatar: new Icon(Icons.pages)),
              Divider(
                height: 12,
                color: Colors.blue,
                indent: 15,
              ),
              Card(
                color: Colors.blue,
                elevation: 8,
                margin: EdgeInsets.all(4.0),
                shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                ),
                child: Text("fadfsafda"),
              ),
              AlertDialog(
                title: Text('标题'),
                content: Text('我是内容'),
                titlePadding: EdgeInsets.all(15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
