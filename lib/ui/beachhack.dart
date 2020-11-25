import 'package:CODe/navigation_bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';

class Beachhack extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const Beachhack({Key key, this.onMenuTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.white,
        ),
        padding: const EdgeInsets.only(top: 16),
        child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomPadding: false,
          body: SafeArea(
              child: CustomScrollView(slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              floating: true,
              elevation: 0,
              // pinned: true,
              title: Align(
                  alignment: Alignment.topRight,
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'B',
                            style: TextStyle(
                                fontFamily: "Serif",
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.cyan)),
                        TextSpan(
                            text: 'eachHack',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                                fontSize: 25)),
                      ],
                    ),
                  )),

              leading: IconButton(
                icon: Icon(Icons.menu, color: Colors.black),
                onPressed: onMenuTap,
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'C',
                                    style: TextStyle(
                                        fontFamily: "Serif",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35,
                                        color: Colors.cyan)),
                                TextSpan(
                                    text:
                                        "hrist Engineering College's first ever Techfest 'Techletics 2k19' and Association of Computer Science Engineering 'CODe' hosted Kerala's first ever Beach Hackathon on 14th and 15th of February, 2019. A 24 hours Coding competition in the sands of Azhikode.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontFamily: 'Abel',
                                        color: Colors.black,
                                        fontSize: 21)),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 200,
                              width: 270,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(29),
                                  topRight: Radius.circular(29),
                                  bottomLeft: Radius.circular(29),
                                  bottomRight: Radius.circular(29),
                                ),
                                image: DecorationImage(
                                  alignment: Alignment.center,
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/1a.jpg'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 200,
                              width: 270,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(29),
                                  topRight: Radius.circular(29),
                                  bottomLeft: Radius.circular(29),
                                  bottomRight: Radius.circular(29),
                                ),
                                image: DecorationImage(
                                  alignment: Alignment.center,
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/1b.jpg'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 200,
                              width: 270,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(29),
                                  topRight: Radius.circular(29),
                                  bottomLeft: Radius.circular(29),
                                  bottomRight: Radius.circular(29),
                                ),
                                image: DecorationImage(
                                  alignment: Alignment.center,
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/1c.jpg'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 200,
                              width: 270,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(29),
                                  topRight: Radius.circular(29),
                                  bottomLeft: Radius.circular(29),
                                  bottomRight: Radius.circular(29),
                                ),
                                image: DecorationImage(
                                  alignment: Alignment.center,
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/1d.jpg'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'B',
                                    style: TextStyle(
                                        fontFamily: "Serif",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35,
                                        color: Colors.cyan)),
                                TextSpan(
                                    text:
                                        'each Hack, the first ever beach hackathon of South India was conducted by CODe and has become a celebrated name among students all over South India since its inception in February 2019. This association aims to enhance technical and extra curricular activities of students apart from regular curriculum.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        fontFamily: 'Abel',
                                        fontSize: 21)),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 200,
                              width: 270,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(29),
                                  topRight: Radius.circular(29),
                                  bottomLeft: Radius.circular(29),
                                  bottomRight: Radius.circular(29),
                                ),
                                image: DecorationImage(
                                  alignment: Alignment.center,
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/2a.jpg'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 200,
                              width: 270,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(29),
                                  topRight: Radius.circular(29),
                                  bottomLeft: Radius.circular(29),
                                  bottomRight: Radius.circular(29),
                                ),
                                image: DecorationImage(
                                  alignment: Alignment.center,
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/2b.jpg'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 200,
                              width: 270,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(29),
                                  topRight: Radius.circular(29),
                                  bottomLeft: Radius.circular(29),
                                  bottomRight: Radius.circular(29),
                                ),
                                image: DecorationImage(
                                  alignment: Alignment.center,
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/2c.jpg'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'H',
                                    style: TextStyle(
                                        fontFamily: "Serif",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35,
                                        color: Colors.cyan)),
                                TextSpan(
                                    text:
                                        "ere it is! Given the current global situation, conducting a hackathon on the beach seemed slightly inappropriate. And so we present HackEd, an online Hackathon! \nHackEd is the much anticipated third edition of Beach Hackathon. HackEd is educational, sparked with an excitement that can only be attained by determining a socially pertinent dilemma.\nHackEd is targeted to resolve issues encountered by students and tutors collectively considering the online platforms for learning. It chiefly intends to enhance online education for all by connecting minds simultaneously as a team even during this global pandemic. Stay tuned to this page for more info! ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontFamily: 'Abel',
                                        color: Colors.black,
                                        fontSize: 21)),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Image(
                              image: AssetImage('assets/images/3b.jpg'),
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                            ),
                            Image(
                              image: AssetImage('assets/images/3c.jpg'),
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ])),
        ));
  }
}
