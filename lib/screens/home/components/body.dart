import 'package:CODe/screens/home/components/comesoon.dart';
import 'package:CODe/screens/home/components/events.dart';
import 'package:flutter/material.dart';
import 'package:CODe/constants.dart';

import 'header_with_seachbox.dart';

import 'title_with_more_bbtn.dart';

//import 'dart:html';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "EVENTS", press: () {}),
          RecomendsEvents(),
          TitleWithMore(title: "COMING SOON", press: () {}),
          Commingsoon(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
