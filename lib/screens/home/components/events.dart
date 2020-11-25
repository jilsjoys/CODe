import 'package:CODe/posts.dart';
import 'package:flutter/material.dart';
import 'package:CODe/screens/details/details_screen.dart';
import 'package:firebase_database/firebase_database.dart';

import '../../../constants.dart';

class RecomendsEvents extends StatefulWidget {
  const RecomendsEvents({
    Key key,
  }) : super(key: key);

  @override
  _RecomendsEventsState createState() => _RecomendsEventsState();
}

class _RecomendsEventsState extends State<RecomendsEvents> {
  List<Posts> postsList = List();
  @override
  void initState() {
    super.initState();
    final postsRef = FirebaseDatabase.instance.reference().child("events");

    postsRef.once().then((DataSnapshot snap) {
      var KEYS = snap.value.keys;

      var DATA = snap.value;

      postsList.clear();

      for (var individualKey in KEYS) {
        Posts posts = new Posts(
          DATA[individualKey]['name'],
          DATA[individualKey]['image'],
          DATA[individualKey]['description'],
          DATA[individualKey]['fee'],
          DATA[individualKey]['rules'],
          DATA[individualKey]['link'],
        );
        postsList.add(posts);
      }
      setState(() {
        print('Length: $postsList length is this ');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      //child:ListView.builder(itemBuilder: null)

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: postsList.length,
        itemBuilder: (context, index) {
          return EventsCard(
              name: postsList[index].name,
              image: postsList[index].image,
              description: postsList[index].description,
              fee: postsList[index].fee,
              rules: postsList[index].rules,
              link: postsList[index].link,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                        name: postsList[index].name,
                        image: postsList[index].image,
                        description: postsList[index].description,
                        fee: postsList[index].fee,
                        rules: postsList[index].rules,
                        link: postsList[index].link),
                  ),
                );
              });
        },
      ),
    );
  }
}

class EventsCard extends StatelessWidget {
  const EventsCard(
      {Key key,
      this.name,
      this.image,
      this.description,
      this.fee,
      this.rules,
      this.press,
      this.link})
      : super(key: key);

  final String image, name, description, fee, rules, link;

  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        // top: kDefaultPadding / 2,
        // bottom: kDefaultPadding * 2.5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      width: size.width * 0.45,
      height: 450,
      child: Column(
        children: <Widget>[
          GestureDetector(
              onTap: press,
              child: Hero(
                  tag: 'location-img-$image',
                  child: Container(
                    height: 209,
                    // padding: EdgeInsets.all(kDefaultPadding / 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 8,
                          color: kPrimaryColor.withOpacity(0.18),
                        ),
                      ],
                      image: DecorationImage(
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                        image: NetworkImage(image),
                      ),
                    ),
                  ))),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
