import 'package:flutter/material.dart';

class InstaStory extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "Stories",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      Row(
        children: <Widget>[
          Icon(Icons.play_arrow),
          Text("Watch All",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black))
        ],
      )
    ],
  );

  final stories = Expanded(
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage("https://scontent-bru2-1.cdninstagram.com/vp/f6b5cdc7059af152c45db668b4f763c1/5D2B14B4/t51.2885-15/e35/s240x240/46194230_1201509286663656_301399295890513506_n.jpg?_nc_ht=scontent-bru2-1.cdninstagram.com&ig_cache_key=MTkyMjYyOTA2Mjc1MDYzMjQ4Ng%3D%3D.2"))),
              margin: EdgeInsets.symmetric(horizontal: 8.0),
            ),
            index == 0
                ? Positioned(
                    right: 10.0,
                    child: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        radius: 10.0,
                        child:
                            Icon(Icons.add, size: 14.0, color: Colors.white)),
                  )
                : Container()
          ],
        );
      },
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[this.topText, stories],
      ),
    );
  }
}
