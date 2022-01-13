import 'package:currency_app/views/screens/screen_factory/screen_factory.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';

abstract class Screens {
  static const main = '/';
}

class MainNavigation {
  final _screenFactory = GetIt.instance<ScreenFactory>();

  Map<String, WidgetBuilder> get routes => {
        Screens.main: (_) => _screenFactory.makeMainScreen(),
      };

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {}
}
