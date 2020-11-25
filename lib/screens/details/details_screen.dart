import 'package:CODe/screens/details/components/image_and_icons.dart';
import 'package:CODe/screens/details/components/title_and_price.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:CODe/constants.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key key,
    this.name,
    this.image,
    this.description,
    this.fee,
    this.rules,
    this.link,
  }) : super(key: key);

  final String image, name, description, fee, rules, link;
  @override
  Widget build(BuildContext context) {
    _showRulesPanel(String rules) {
      showModalBottomSheet(
          backgroundColor: Colors.white70,
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              child: Column(
                children: [
                  Text(
                    'RULES',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      height: 260,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                          rules,
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 15.0, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: RaisedButton(
                        color: Colors.cyan,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Done',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                  )
                ],
              ),
            );
          });
    }

    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: SafeArea(
            child: CustomScrollView(slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            floating: true,
            elevation: 0,
            // pinned: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              new Column(
                children: <Widget>[
                  ImageAndIcons(
                    size: size,
                    image: image,
                  ),
                  TitleAndPrice(name: name, description: description, fee: fee),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Text(
                      description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 21,
                        fontFamily: 'Cabin',
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: kDefaultPadding),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: size.width / 2,
                        height: 84,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                            ),
                          ),
                          color: kPrimaryColor,
                          onPressed: () => _launchURL(link),
                          child: Text(
                            "Register",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: FlatButton(
                          onPressed: () => _showRulesPanel(rules),
                          child: Text(
                            "Rules",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ]),
          )
        ])));
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
