import 'package:CODe/navigation_bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:CODe/screens/home/components/body.dart';

class Home extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const Home({Key key, this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: ClampingScrollPhysics(),
      child: Container(
        //  padding: const EdgeInsets.only(left: 12, right: 2, top: 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              //color: Colors.cyan,
              child: SafeArea(
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.menu,
                        ),
                        onPressed: () {
                          onMenuTap();
                        }),
                  ],
                ),
              ),
            ),
            Body(),
          ],
        ),
      ),
    );
  }
}
