import 'package:flutter/material.dart';

class ExplorerMiddleSection extends StatelessWidget {
  const ExplorerMiddleSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  "Explorer",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
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
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 72),
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
                                  bottom: BorderSide(color: Colors.white12))),
                          child: ListTile(
                            title: Text("notifiction $i"),
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
    );
  }
}
