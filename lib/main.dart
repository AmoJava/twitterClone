import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    var col = Colors.yellow;
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        height: screenHeight,
        width: screenWidth,
        child: Row(
          children: <Widget>[
            screenWidth < 550
                ? Container()
                : Container(
                    width: screenWidth * .20,
                    height: screenHeight,
                    child: Column(
                      children: <Widget>[
                        FlatButton(
                          hoverColor: Colors.white30,
                          onPressed: () {},
                          onHighlightChanged: (bool x) {},
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'ccc',
                                style: TextStyle(
                                    color: Colors.red[200],
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ),
                        ),
                        FlatButton(
                          hoverColor: Colors.white30,
                          onPressed: () {},
                          onHighlightChanged: (bool x) {},
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'ccc',
                                style: TextStyle(
                                    color: Colors.red[200],
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ),
                        ),
                        FlatButton(
                          hoverColor: Colors.white30,
                          onPressed: () {},
                          onHighlightChanged: (bool x) {},
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'ccc',
                                style: TextStyle(
                                    color: Colors.red[200],
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ),
                        )
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
                              bottom: BorderSide(color: Colors.grey),
                              right: BorderSide(color: Colors.grey),
                              left: BorderSide(color: Colors.grey))),
                      width: double.infinity,
                      height: 70,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "Home",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Icon(Icons.autorenew),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border(
                                right: BorderSide(color: Colors.grey),
                                left: BorderSide(color: Colors.grey))),
                        child: ListView.builder(
                          //physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 106,
                          itemBuilder: (context, i) {
                            return Container(
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border(
                                      bottom: BorderSide(color: Colors.grey))),
                              child: ListTile(
                                title: Text("$i"),
                              ),
                            );
                          },
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
                                    color: Colors.white30,
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
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.white30,
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
