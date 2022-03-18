import 'package:currency_app/strings.dart';
import 'package:currency_app/views/navigation/main_navigation.dart';
import 'package:currency_app/views/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'bloc/bottom_nav_bar/bottom_nav_bar_cubit.dart';

class MyApp extends StatelessWidget {
  final mainNavigation = GetIt.instance<MainNavigation>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavBarCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: Strings.appName,
        theme: AppTheme.current,
        routes: mainNavigation.routes,
        onGenerateRoute: (settings) => mainNavigation.onGenerateRoute(settings),
      ),
    );
  }

  MyApp({Key? key}) : super(key: key);
}
