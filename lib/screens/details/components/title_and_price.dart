import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key,
    this.name,
    this.description,
    this.fee,
  }) : super(key: key);

  final String name, description, fee;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          Text(
            "$name",
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text(
            "$fee",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
