import 'package:flutter/material.dart';

import '../../../constants.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    this.image,
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
        child: SizedBox(
          height: size.height * 0.65,
          child: Column(
            children: <Widget>[
              Hero(
                tag: 'location-img-$image',
                child: Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Container(
                    height: size.height * .63,
                    //width: size.width * .9,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(29),
                        topRight: Radius.circular(29),
                        bottomLeft: Radius.circular(29),
                        bottomRight: Radius.circular(29),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 70,
                          color: kPrimaryColor.withOpacity(0.29),
                        ),
                      ],
                      image: DecorationImage(
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                        image: NetworkImage(image),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
