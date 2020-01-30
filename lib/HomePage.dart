import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePageMiddleSection extends StatelessWidget {
  const HomePageMiddleSection({
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
                      itemCount: 2,
                      itemBuilder: (context, i) {
                        return Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border(
                                  bottom: BorderSide(color: Colors.white12))),
                          child: Tweeta(),
                        );
                      },
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget Tweeta() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.favorite,
                    color: Colors.grey[500],
                    size: 13,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      "Ahmed Mohsin liked",
                      style: TextStyle(fontSize: 11, color: Colors.grey[500]),
                    ),
                  )
                ],
              ),
            ),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 1, top: 4),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
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
                                "#MadeByFlutter",
                                style: TextStyle(color: Colors.lightBlue),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 8),
                          child: Text(
                            '@ahmed_fadl  .  29m',
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey[500]),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 4, left: 2, bottom: 4),
                      child: Container(
                        child: Text(
                          ' Rise Rise Lorem Ipsum is simply dummy text of the printing and  typesetting industry. \nLorem Ipsum has been the industrys standard dummy text ever since the 1500s.',
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 8, bottom: 8),
              child: Container(
                width: 500,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 5,
                      color: Colors.white12,
                    ),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://4.bp.blogspot.com/-5URJ6nVaORo/WK2UJrZ_CZI/AAAAAAAAA6U/za7g_4nTJokDOtEt8_vhHrCZK61QRnQ9wCLcB/s1600/Batman%2B6.jpg"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.comment,
                          size: 17,
                          color: Colors.grey[500],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Text(
                            '10',
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey[500]),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.share,
                          size: 17,
                          color: Colors.grey[500],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Text(
                            '130',
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey[500]),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.favorite_border,
                          size: 17,
                          color: Colors.grey[500],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Text(
                            '90',
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey[500]),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.free_breakfast,
                          size: 17,
                          color: Colors.grey[500],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Text(
                            '5',
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey[500]),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
