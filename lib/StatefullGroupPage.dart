import 'package:flutter/material.dart';

class StatefullGroupPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return test();
  }
}

class test extends State<StatefullGroupPage> {
  // TODO: implement build
  int _currentPos = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Statefull 与基础组件',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Statefull 与基础组件'),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentPos,
            onTap: (index) {
              setState(() {
                _currentPos = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarms, color: Colors.blue),
                  activeIcon:
                  Icon(Icons.access_alarms, color: Colors.deepOrangeAccent),
                  title: Text('首页')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list, color: Colors.blue),
                  activeIcon: Icon(Icons.list, color: Colors.deepOrangeAccent),
                  title: Text('列表')),
            ]),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Text('+++'),
        ),
        body: _currentPos == 0
            ? Container(
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
              Chip(
                  label: new Text('蛋蛋'),
                  avatar: new Icon(Icons.pages)),
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
                child: Text("flutter hello"),
              ),
              AlertDialog(
                title: Text('标题'),
                content: Text('我是内容'),
                titlePadding: EdgeInsets.all(15),
              )
            ],
          ),
        )
            : RefreshIndicator(
            child: ListView(
              children: <Widget>[Text('我是刷新列表中的数据 ')],
            ),
            onRefresh: mRefresh),
      ),
    );
  }
}

Future<Null> mRefresh() async {
  await Future.delayed(Duration(milliseconds: 200));
  return null;
}
