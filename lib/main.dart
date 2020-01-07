import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
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
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    print(screenWidth);
    var col = Color(0xffb15202b);
    var col2 = Color(0xff21303d);

    return Scaffold(
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
                  sectionRList(
                      screenWidth: screenWidth, txt: "Home", icon: Icons.home),
                  sectionRList(
                      screenWidth: screenWidth,
                      txt: "Explore",
                      icon: Icons.explore),
                  sectionRList(
                      screenWidth: screenWidth,
                      txt: "Notifications",
                      icon: Icons.notifications),
                  sectionRList(
                      screenWidth: screenWidth,
                      txt: "Messages",
                      icon: Icons.message),
                  sectionRList(
                      screenWidth: screenWidth,
                      txt: "BookMarks",
                      icon: Icons.bookmark),
                  sectionRList(
                      screenWidth: screenWidth, txt: "List", icon: Icons.list),
                  sectionRList(
                      screenWidth: screenWidth,
                      txt: "Profile",
                      icon: Icons.account_circle),
                  sectionRList(
                      screenWidth: screenWidth,
                      txt: "More",
                      icon: Icons.more_horiz),
                ],
              ),
            ),
            Expanded(
              child: Container(
                //width: screenWidth * .50,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border(
                              bottom: BorderSide(color: Colors.white12),
                              right: BorderSide(color: Colors.white12),
                              left: BorderSide(color: Colors.white12))),
                      width: double.infinity,
                      height: 70,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 18, right: 8),
                            child: Text(
                              "Home",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Icon(
                              Icons.settings,
                              color: Colors.white,
                              size: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border(
                                right: BorderSide(color: Colors.white12),
                                left: BorderSide(color: Colors.white12))),
                        child: SingleChildScrollView(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: double.infinity,
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: CircleAvatar(
                                              radius: 25,
                                              backgroundImage: NetworkImage(
                                                  'https://pbs.twimg.com/profile_images/1207727571959504898/KujGkveH_bigger.jpg'),
                                            ),
                                          ),
                                          Text(
                                            "What's Happening .. ?",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w100,
                                                color: Colors.white30,
                                                fontSize: 18),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 72),
                                            child: IconButton(
                                                hoverColor: Colors.white30,
                                                icon: Icon(
                                                  Icons.image,
                                                  color: Colors.lightBlue,
                                                ),
                                                onPressed: () {}),
                                          ),
                                          IconButton(
                                              icon: Icon(
                                                Icons.gif,
                                                color: Colors.lightBlue,
                                                size: 25,
                                              ),
                                              onPressed: () {}),
                                          IconButton(
                                              icon: Icon(
                                                Icons.date_range,
                                                color: Colors.lightBlue,
                                                size: 25,
                                              ),
                                              onPressed: () {}),
                                          IconButton(
                                              icon: Icon(
                                                Icons.face,
                                                color: Colors.lightBlue,
                                                size: 25,
                                              ),
                                              onPressed: () {}),
                                        ],
                                      ),
                                      Divider(
                                        color: Colors.white12,
                                        thickness: 9,
                                      )
                                    ],
                                  ),
                                ),
                                ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: 106,
                                  itemBuilder: (context, i) {
                                    return Container(
                                      height: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.white12))),
                                      child: ListTile(
                                        title: Text("$i"),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
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
                                    Container(
                                        width: double.infinity,
                                        child: Column(
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Text(
                                                    'Trending in Egypt',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.white30),
                                                  ),
                                                  Icon(
                                                    CupertinoIcons.forward,
                                                    color: Colors.white30,
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                ' محمد_محمد_أبوتريكــة #    ',
                                                textDirection:
                                                    TextDirection.rtl,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                width: double.infinity,
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  '103.6K Tweets',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.white30),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.white12,
                                    ),
                                    Text('gghh'),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.white12,
                                    ),
                                    Text('gghh'),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.white12,
                                    ),
                                    Text('gghh'),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.white12,
                                    ),
                                    Text('gghh'),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.white12,
                                    ),
                                    Text('gghh'),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.white12,
                                    ),
                                    Text('gghh'),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.white12,
                                    ),
                                    Text('gghh'),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.white12,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Text('gghh'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.white10,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Text('gghh'),
                                      Divider(),
                                      Text('gghh'),
                                      Divider(),
                                      Text('gghh'),
                                      Divider(),
                                      Text('gghh'),
                                      Divider(),
                                      Text('gghh'),
                                      Divider(),
                                      Text('gghh'),
                                      Divider(),
                                      Text('gghh'),
                                      Divider(),
                                      Text('gghh'),
                                      Divider(),
                                      Text('gghh'),
                                      Divider(),
                                      Text('gghh'),
                                      Divider(),
                                      Text('gghh'),
                                      Divider(),
                                      Text('gghh'),
                                      Divider(),
                                      Text('gghh'),
                                      Divider(),
                                      Text('gghh'),
                                      Divider(),
                                      Text('gghh'),
                                      Divider(),
                                      Text('gghh'),
                                      Divider(),
                                      Text('gghh'),
                                      Divider(),
                                      Text('gghh'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
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
