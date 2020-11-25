import 'package:CODe/ui/about_us.dart';
import 'package:CODe/ui/beachhack.dart';

import 'package:CODe/ui/home.dart';
import 'package:bloc/bloc.dart';

enum NavigationEvents {
  HomeClickedEvent,
  BeachhackClickedEvent,
  AboutusClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  final Function onMenuTap;

  NavigationBloc({this.onMenuTap});

  @override
  NavigationStates get initialState => Home(
        onMenuTap: onMenuTap,
      );

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomeClickedEvent:
        yield Home(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.BeachhackClickedEvent:
        yield Beachhack(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.AboutusClickedEvent:
        yield Aboutus(
          onMenuTap: onMenuTap,
        );
        break;
    }
  }
}
