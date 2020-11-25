import 'package:CODe/navigation_bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';

class Aboutus extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const Aboutus({Key key, this.onMenuTap}) : super(key: key);
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
                            text: 'A',
                            style: TextStyle(
                                fontFamily: "Serif",
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.cyan)),
                        TextSpan(
                            text: 'bout us',
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
                                        'ommunity Of Developers or CODe is the face of the Department of Computer Science and Engineering of Christ College of Engineering, Irinjalakuda.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontFamily: 'Abel',
                                        color: Colors.black87,
                                        fontSize: 21)),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 40,
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
                                  image: AssetImage('assets/images/4a.jpg'),
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
                                  image: AssetImage('assets/images/4b.jpg'),
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
                                  image: AssetImage('assets/images/4c.jpg'),
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
                                    text: 'D',
                                    style: TextStyle(
                                        fontFamily: "Serif",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35,
                                        color: Colors.cyan)),
                                TextSpan(
                                    text:
                                        'epartment of Computer Science & Engineering started in 2015 in Christ College of Engineering, which offers the undergraduate (B. Tech.) course. The annual intake of the B. Tech. program is 60 students and it is affiliated to Dr. A P J Abdul Kalam Technological University. The department provides the students an environment that stimulates their intellectual growth and personality development. We provide excellent infrastructure facilities with well-equipped computer labs, smart classrooms, digital library and language lab. We also have high speed leased line Internet connection and online access to all IEEE journals. The Department has an excellent team of committed and qualified faculty members encouraging and guiding students in their academic as well as personal development. We pride ourselves in providing a positive environment conducive to Engineering Studies and Research.',
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
                                  image: AssetImage('assets/images/5a.jpg'),
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
                                  image: AssetImage('assets/images/5b.jpg'),
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
                                  image: AssetImage('assets/images/5c.jpg'),
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
                        height: 10,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'T',
                                    style: TextStyle(
                                        fontFamily: "Serif",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35,
                                        color: Colors.cyan)),
                                TextSpan(
                                    text:
                                        'he Computer Science & Engineering program commits itself :\n To encourage creativity to explore the immense irresistible opportunities in computing.\n To mould engineers who broaden their knowledge, virtue and integrity towards innovation.\n To develop employable professionals who are passionate and capable of maintaining a sustainable world.\n',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontFamily: 'Abel',
                                        color: Colors.black,
                                        fontSize: 21)),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Image(
                              image: AssetImage('assets/images/venom.jpg'),
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                            ),
                            Image(
                              image: AssetImage('assets/images/member.jpeg'),
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
