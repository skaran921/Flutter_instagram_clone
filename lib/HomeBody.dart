import 'package:flutter/material.dart';
import './InstaList.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Flexible(
          child: InstaList(),
        )
      ],
    );
  }
}
