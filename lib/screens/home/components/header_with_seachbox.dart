import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeaderWithSearchBox extends StatefulWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);
  final Size size;
  @override
  _HeaderWithSearchBoxState createState() => _HeaderWithSearchBoxState();
}

class _HeaderWithSearchBoxState extends State<HeaderWithSearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(bottom: kDefaultPadding * ,
      // It will cover 20% of our total height
      height: widget.size.height * .19,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: widget.size.height * 0.2 - 10,
            decoration: BoxDecoration(
              // color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Spacer(),
                Container(
                    padding: const EdgeInsets.only(left: 2, right: 15, top: 20),
                    child: Image(
                      image: AssetImage('assets/images/code2.png'),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
