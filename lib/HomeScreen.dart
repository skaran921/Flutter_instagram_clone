import 'package:flutter/material.dart';
import './HomeBody.dart';

class HomeScreen extends StatelessWidget {
  final topBar = AppBar(
    elevation: 2.0,
    title: SizedBox(
      height: 35.0,
      child: Image.asset("assets/insta.png"),
    ),
    leading: Icon(Icons.camera_alt),
    backgroundColor: Color(0xfff8faf8),
    centerTitle: true,
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: HomeBody(),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: BottomAppBar(
          elevation: 10.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  size: 30.0,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search, size: 30.0),
                onPressed: null,
              ),
              IconButton(
                  icon: Icon(Icons.add_box, size: 30.0), onPressed: null),
              IconButton(
                icon: Icon(Icons.favorite_border, size: 30.0),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.person_outline, size: 30.0),
                onPressed: null,
              )
            ],
          ),
        ),
      ),
    );
  }
}
