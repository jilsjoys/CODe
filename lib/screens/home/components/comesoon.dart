import 'package:CODe/commingsoon.dart';
import 'package:CODe/screens/details/eventdetails.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Commingsoon extends StatefulWidget {
  const Commingsoon({
    Key key,
  }) : super(key: key);

  @override
  _CommingsoonState createState() => _CommingsoonState();
}

class _CommingsoonState extends State<Commingsoon> {
  List<Comming> postsList2 = List();
  @override
  void initState() {
    super.initState();
    final postsRef = FirebaseDatabase.instance.reference().child("commingsoon");

    postsRef.once().then((DataSnapshot snap) {
      var KEYS = snap.value.keys;

      var DATA = snap.value;

      postsList2.clear();

      for (var individualKey in KEYS) {
        Comming posts = new Comming(
          DATA[individualKey]['name'],
          DATA[individualKey]['image'],
          DATA[individualKey]['description'],
          DATA[individualKey]['fee'],
          DATA[individualKey]['rules'],
        );
        postsList2.add(posts);
      }
      setState(() {
        print('Length: $postsList2 length is this ');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: postsList2.length,
        itemBuilder: (context, index) {
          return EventCard(
              name: postsList2[index].name,
              image: postsList2[index].image,
              description: postsList2[index].description,
              fee: postsList2[index].fee,
              rules: postsList2[index].rules,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen2(
                        name: postsList2[index].name,
                        image: postsList2[index].image,
                        description: postsList2[index].description,
                        fee: postsList2[index].fee,
                        rules: postsList2[index].rules),
                  ),
                );
              });
        },
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  const EventCard({
    Key key,
    this.name,
    this.image,
    this.description,
    this.fee,
    this.rules,
    this.press,
  }) : super(key: key);
  final String image, name, description, fee, rules;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        // margin: EdgeInsets.only(
        //   left: kDefaultPadding,
        //   top: kDefaultPadding,
        //   bottom: kDefaultPadding,
        // ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        width: 260,
        height: 460,
        child: Column(children: <Widget>[
          GestureDetector(
              onTap: press,
              child: Hero(
                tag: 'location-img-$image',
                child: Container(
                  // margin: EdgeInsets.only(
                  //   left: kDefaultPadding,
                  //   top: kDefaultPadding / 2,
                  //   bottom: kDefaultPadding / 2,
                  // ),
                  width: size.width * .65,
                  height: 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(image),
                    ),
                  ),
                ),
              ))
        ]));
  }
}
