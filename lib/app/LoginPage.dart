import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
              image: AssetImage('assets/images/bg_login.png'),
              fit: BoxFit.fill),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.0),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0.0, 1.0),
                        color: Colors.grey,
                        blurRadius: 4,
                        spreadRadius: 2)
                  ]),
              margin: EdgeInsets.fromLTRB(28, 98, 28, 0),
              padding: EdgeInsets.fromLTRB(28, 25, 28, 45),
              height: 370,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                    child: Text('砂浆云管家',
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 30,
                            color: Color(0xff1A1A1A))),
                  ),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/ic_phone.png',
                        width: 15,
                        height: 20,
                      ),
                      SizedBox(
                        width: 136,
                        height: 23,
                        child: Text('请输入用户名',
                            softWrap: true,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 16,
                                color: Color(0xff1A1A1A))),
                      ),
                      Image.asset(
                        'assets/images/ic_del.png',
                        width: 15,
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
