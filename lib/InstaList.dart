import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './InstaStory.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return index == 0
            ? SizedBox(
                child: InstaStory(),
                height: deviceSize.height * 0.22,
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://scontent-bru2-1.cdninstagram.com/vp/f6b5cdc7059af152c45db668b4f763c1/5D2B14B4/t51.2885-15/e35/s240x240/46194230_1201509286663656_301399295890513506_n.jpg?_nc_ht=scontent-bru2-1.cdninstagram.com&ig_cache_key=MTkyMjYyOTA2Mjc1MDYzMjQ4Ng%3D%3D.2"))),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "skaran921",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        IconButton(
                          alignment: Alignment.centerRight,
                          onPressed: null,
                          icon: Icon(Icons.more_vert),
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    child: Image.network(
                        "https://images.pexels.com/photos/879109/pexels-photo-879109.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(FontAwesomeIcons.heart),
                            SizedBox(width: 16.0),
                            Icon(FontAwesomeIcons.comment),
                            SizedBox(width: 16.0),
                            Icon(FontAwesomeIcons.paperPlane),
                            SizedBox(width: 16.0)
                          ],
                        ),
                        Icon(FontAwesomeIcons.bookmark),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Liked  by skaran921, hitesh0141 and 528,331 others",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 0.8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                  "https://scontent-bru2-1.cdninstagram.com/vp/f6b5cdc7059af152c45db668b4f763c1/5D2B14B4/t51.2885-15/e35/s240x240/46194230_1201509286663656_301399295890513506_n.jpg?_nc_ht=scontent-bru2-1.cdninstagram.com&ig_cache_key=MTkyMjYyOTA2Mjc1MDYzMjQ4Ng%3D%3D.2",
                                ),
                              )),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Add a comment...",
                                border: InputBorder.none),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "1 Day Ago",
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              );
      },
    );
  }
}
