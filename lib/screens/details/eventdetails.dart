import 'package:flutter/material.dart';
import 'package:CODe/screens/details/components/image_and_icons.dart';
import 'package:CODe/screens/details/components/title_and_price.dart';
import '../../constants.dart';

class Screen2 extends StatelessWidget {
  const Screen2({
    Key key,
    this.name,
    this.image,
    this.description,
    this.fee,
    this.rules,
  }) : super(key: key);

  final String image, name, description, fee, rules;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              floating: true,
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
                  new ImageAndIcons(
                    size: size,
                    image: image,
                  ),
                  new TitleAndPrice(
                      name: name, description: description, fee: fee),
                  new Padding(
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
                  new SizedBox(height: kDefaultPadding),
                  new Container(
                    width: size.width / 2,
                    height: 50,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(199),
                        ),
                      ),
                      color: kPrimaryColor,
                      onPressed: () {},
                      child: Text(
                        "Wishlist",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  new SizedBox(height: kDefaultPadding),
                ],
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
