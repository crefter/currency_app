import 'package:currency_app/logic/bottom_nav_bar/bottom_nav_bar_cubit.dart';
import 'package:currency_app/views/consts.dart';
import 'package:currency_app/views/navigation/main_navigation.dart';
import 'package:currency_app/views/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class MyApp extends StatelessWidget {
  final mainNavigation = GetIt.instance<MainNavigation>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomNavBarCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: Consts.appName,
        theme: AppTheme.current,
        routes: mainNavigation.routes,
        onGenerateRoute: (settings) => mainNavigation.onGenerateRoute(settings),
      ),
    );
  }

  MyApp({Key? key}) : super(key: key);
}
