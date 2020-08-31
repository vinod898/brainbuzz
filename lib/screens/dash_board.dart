import 'dart:ui';

import 'package:brainbuzz/screens/aboutus.dart';
import 'package:brainbuzz/screens/contactus.dart';
import 'package:brainbuzz/screens/promocode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

final Color backgroundColor = Color(0xFF4A4A58);

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double width = queryData.size.width;
    double height = queryData.size.height;
    return Scaffold(
      appBar: AppBar(title: Text("Brain Buzz")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
          children: <Widget>[
            //ExactAssetImage('assets/images/lake.jpeg')
            Container(
              padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: width - 300,
                    child: Image.asset('assets/images/Icon.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "BRAINBUZZ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                      Text("ACADEMY",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1))
                    ],
                  )
                ],
              ),
            ),
            Divider(),
            ListTile(
                title: Text("HOME",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1)),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                title: Text("TEST SERIES",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1)),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                title: Text("ATTEMPTED TESTS",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1)),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                title: Text("FREE TESTS",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1)),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                title: Text("PROMO CODES",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PromoCodes()),
                  );
                }),
//            ListTile(
//                title: Text("SETTINGS",
//                    style: TextStyle(
//                        fontSize: 15,
//                        fontWeight: FontWeight.w500,
//                        letterSpacing: 1)),
//                onTap: () {
//                  Navigator.pop(context);
//                }),
            Divider(),
            ListTile(
                title: Text("ABOUT US",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUs()),
                  );
                }),
            ListTile(
                title: Text("CONTACT US",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactUs()),
                  );
                }),
            ListTile(
                leading: Icon(Icons.power_settings_new),
                title: Text("LOGOUT",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1)),
                onTap: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
