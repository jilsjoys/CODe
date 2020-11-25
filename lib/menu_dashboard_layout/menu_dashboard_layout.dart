import 'package:CODe/menu_dashboard_layout/dashboard.dart';
import 'package:CODe/menu_dashboard_layout/menu.dart';
import 'package:CODe/navigation_bloc/navigation_bloc.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'menu.dart';

final Color backgroundColor = Colors.cyan;

class MenuDashboardPage extends StatefulWidget {
  @override
  _MenuDashboardPageState createState() => _MenuDashboardPageState();
}

class _MenuDashboardPageState extends State<MenuDashboardPage>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 250);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuScaleAnimation;
  Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
    _menuScaleAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onMenuTap() {
    setState(() {
      if (isCollapsed)
        _controller.forward();
      else
        _controller.reverse();

      isCollapsed = !isCollapsed;
    });
  }

  void onMenuItemClicked() {
    setState(() {
      _controller.reverse();
    });

    isCollapsed = !isCollapsed;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      body: Container(
        child: BlocProvider<NavigationBloc>(
          create: (context) => NavigationBloc(onMenuTap: onMenuTap),
          child: Stack(
            children: <Widget>[
              FlareActor(
                "assets/Background.flr",
                shouldClip: false,
                alignment: Alignment.center,
                fit: BoxFit.fitHeight,
                animation: "Blue",
              ),
              BlocBuilder<NavigationBloc, NavigationStates>(
                  builder: (context, NavigationStates navigationState) {
                return Menu(
                  slideAnimation: _slideAnimation,
                  menuAnimation: _menuScaleAnimation,
                  // selectedIndex: findSelectedIndex(navigationState),
                  onMenuItemClicked: onMenuItemClicked,
                );
              }),
              Dashboard(
                duration: duration,
                onMenuTap: onMenuTap,
                scaleAnimation: _scaleAnimation,
                isCollapsed: isCollapsed,
                screenWidth: screenWidth,
                child: BlocBuilder<NavigationBloc, NavigationStates>(builder: (
                  context,
                  NavigationStates navigationState,
                ) {
                  return navigationState as Widget;
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
