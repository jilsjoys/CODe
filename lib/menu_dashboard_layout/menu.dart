import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:CODe/navigation_bloc/navigation_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Menu extends StatelessWidget {
  final Animation<Offset> slideAnimation;
  final Animation<double> menuAnimation;
  final int selectedIndex;
  final Function onMenuItemClicked;

  const Menu(
      {Key key,
      this.slideAnimation,
      this.menuAnimation,
      this.selectedIndex,
      this.onMenuItemClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: ScaleTransition(
        scale: menuAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 19.0, bottom: 29.0),
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.transparent,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/images/code5.png'),
                    ),
                  ),
                ),
                Text('Community Of Developers',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        fontFamily: 'Cabin')),
                SizedBox(
                  height: 140,
                ),
                GestureDetector(
                    onTap: () {
                      BlocProvider.of<NavigationBloc>(context)
                          .add(NavigationEvents.HomeClickedEvent);
                      onMenuItemClicked();
                    },
                    child: Text("Home",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cabin'))),
                SizedBox(height: 30),
                GestureDetector(
                    onTap: () {
                      BlocProvider.of<NavigationBloc>(context)
                          .add(NavigationEvents.BeachhackClickedEvent);
                      onMenuItemClicked();
                    },
                    child: Text("Beachhack",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cabin'))),
                SizedBox(height: 30),
                GestureDetector(
                    onTap: () {
                      BlocProvider.of<NavigationBloc>(context)
                          .add(NavigationEvents.AboutusClickedEvent);
                      onMenuItemClicked();
                    },
                    child: Text("About Us",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cabin'))),
                SizedBox(height: 200),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          String link = "https://www.instagram.com/code_cce/";
                          _launchURL(link);
                        },
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Icon(
                              FontAwesomeIcons.instagram,
                              size: 30.0,
                              color: Colors.white70,
                            ))),
                    SizedBox(
                      width: 20.0,
                    ),
                    GestureDetector(
                        onTap: () {
                          String link =
                              "https://www.youtube.com/channel/UCzWuqDLkgmYra0Zu7nah-aA";
                          _launchURL(link);
                        },
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Icon(
                              FontAwesomeIcons.youtube,
                              size: 30.0,
                              color: Colors.white70,
                            ))),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _launchURL(link) async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      Fluttertoast.showToast(
          msg: "     Error     ",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }
}
