import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tweeter_app/Explorer.dart';
import 'package:tweeter_app/HomePage.dart';
import 'package:tweeter_app/NotificationsPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Color(0xffb15202b),
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget middleSection;

  @override
  void initState() {
    middleSection = HomePageMiddleSection();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    print(screenWidth);
    var col = Color(0xffb15202b);
    var col2 = Color(0xff21303d);

    return Scaffold(
      backgroundColor: col,
      body: Container(
        color: col,
        height: screenHeight,
        width: screenWidth,
        child: Row(
          children: <Widget>[
            Container(
              width: screenWidth * .20,
              height: screenHeight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  sectionRList(
                      screenWidth: screenWidth, txt: "", icon: Icons.toys),
                  MaterialButton(
                    splashColor: Colors.transparent,
                    hoverColor: Colors.lightBlue.withAlpha(25),
                    onPressed: () {
                      setState(() {
                        middleSection = HomePageMiddleSection();
                      });
                    },
                    child: sectionRList(
                        screenWidth: screenWidth,
                        txt: "Home",
                        icon: Icons.home),
                  ),
                  MaterialButton(
                    splashColor: Colors.transparent,
                    hoverColor: Colors.lightBlue.withAlpha(25),
                    animationDuration: Duration(milliseconds: 1),
                    onPressed: () {
                      setState(() {
                        middleSection = ExplorerMiddleSection();
                      });
                    },
                    child: sectionRList(
                        screenWidth: screenWidth,
                        txt: "Explore",
                        icon: Icons.explore),
                  ),
                  MaterialButton(
                    splashColor: Colors.transparent,
                    hoverColor: Colors.lightBlue.withAlpha(25),
                    onPressed: () {
                      setState(() {
                        middleSection = NotificationsMiddleSection();
                      });
                    },
                    child: sectionRList(
                        screenWidth: screenWidth,
                        txt: "Notifications",
                        icon: Icons.notifications),
                  ),
                  MaterialButton(
                    splashColor: Colors.transparent,
                    hoverColor: Colors.lightBlue.withAlpha(25),
                    onPressed: () {},
                    child: sectionRList(
                        screenWidth: screenWidth,
                        txt: "Messages",
                        icon: Icons.message),
                  ),
                  MaterialButton(
                    splashColor: Colors.transparent,
                    hoverColor: Colors.lightBlue.withAlpha(25),
                    onPressed: () {},
                    child: sectionRList(
                        screenWidth: screenWidth,
                        txt: "BookMarks",
                        icon: Icons.bookmark),
                  ),
                  MaterialButton(
                    splashColor: Colors.transparent,
                    hoverColor: Colors.lightBlue.withAlpha(25),
                    onPressed: () {},
                    child: sectionRList(
                        screenWidth: screenWidth,
                        txt: "List",
                        icon: Icons.list),
                  ),
                  MaterialButton(
                    splashColor: Colors.transparent,
                    hoverColor: Colors.lightBlue.withAlpha(25),
                    onPressed: () {},
                    child: sectionRList(
                        screenWidth: screenWidth,
                        txt: "Profile",
                        icon: Icons.account_circle),
                  ),
                  MaterialButton(
                    splashColor: Colors.transparent,
                    hoverColor: Colors.lightBlue.withAlpha(25),
                    onPressed: () {},
                    child: sectionRList(
                        screenWidth: screenWidth,
                        txt: "More",
                        icon: Icons.more_horiz),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                //width: screenWidth * .50,
                color: Colors.transparent,
                child: middleSection,
              ),
            ),
            screenWidth < 800
                ? Container()
                : Container(
                    width: screenWidth * .25,
                    height: screenHeight,
                    child: SingleChildScrollView(
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          children: <Widget>[
                            searchTextField(),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: col2,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: double.infinity,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12, top: 4, bottom: 3),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              'Trends for you',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 12, top: 4, bottom: 3),
                                              child: Icon(
                                                CupertinoIcons.gear,
                                                color: Colors.lightBlue,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.white12,
                                    ),
                                    trend(
                                        country: "Egypt",
                                        number: 50,
                                        trend: " # YallaYaAhly"),
                                    trend(
                                        country: "World Wide",
                                        number: 100,
                                        trend: " # FlutterCreate"),
                                    trend(
                                        country: "Egypt",
                                        number: 50,
                                        trend: " # Egypt2020"),
                                    trend(
                                        country: "Egypt",
                                        number: 50,
                                        trend: " # Yusuf"),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, top: 8, bottom: 8),
                                      child: Container(
                                        width: double.infinity,
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Show More",
                                          style: TextStyle(
                                              color: Colors.lightBlue),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 13,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, bottom: 20),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: col2,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: double.infinity,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12, top: 4, bottom: 3),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              'Who to Follow',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.white12,
                                    ),
                                    WhoToFollow(),
                                    WhoToFollow(),
                                    WhoToFollow(),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, top: 8, bottom: 8),
                                      child: Container(
                                        width: double.infinity,
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Show More",
                                          style: TextStyle(
                                              color: Colors.lightBlue),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 13,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Widget sectionRList({screenWidth, String txt, icon}) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: screenWidth > 980
            ? MainAxisAlignment.start
            : MainAxisAlignment.center,
        children: <Widget>[
          screenWidth > 900
              ? SizedBox(
                  width: 15,
                )
              : Container(),
          screenWidth > 1200
              ? SizedBox(
                  width: 15,
                )
              : Container(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              icon,
              color: Colors.white,
              size: screenWidth < 980 ? 40 : 30,
            ),
          ),
          screenWidth < 980
              ? Container()
              : Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    txt,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                )
        ],
      ),
    );
  }

  Widget trend({String trend, String country, int number}) {
    return Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Trending in $country',
                    style: TextStyle(fontSize: 10, color: Colors.grey[500]),
                  ),
                  Icon(
                    CupertinoIcons.forward,
                    color: Colors.grey[500],
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    ' $trend     ',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Text(
                  '$number K Tweets',
                  style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.white12,
            ),
          ],
        ));
  }

  Widget WhoToFollow() {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/1207727571959504898/KujGkveH_bigger.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Ahmed Mohsin",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "@ahmad_fadl9",
                      style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 4, bottom: 4, left: 12, right: 12),
                    child: Text(
                      "Follow",
                      style: TextStyle(
                          color: Colors.lightBlue, fontWeight: FontWeight.w400),
                    ),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.lightBlue),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              )
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.white12,
          ),
        ],
      ),
    );
  }
}

class searchTextField extends StatelessWidget {
  const searchTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white30, borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.search,
                color: Colors.white,
              ),
              Text(
                'Search Twitter',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
