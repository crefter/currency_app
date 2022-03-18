import 'package:currency_app/views/bloc/bottom_nav_bar/bottom_nav_bar_cubit.dart';
import 'package:currency_app/views/bloc/bottom_nav_bar/bottom_nav_bar_state.dart';
import 'package:currency_app/views/pages/change_page/change_page.dart';
import 'package:currency_app/views/pages/currency_page/currency_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
  }) : super(key: key);

  final List<Widget> _tabs = const [ChangePage(), CurrencyPage()];

  @override
  Widget build(BuildContext context) {
    BottomNavBarCubit bottomNavBarCubit = context.watch<BottomNavBarCubit>();
    BottomNavBarState state = bottomNavBarCubit.state;
    return IndexedStack(children: _tabs, index: state.index);
  }
}