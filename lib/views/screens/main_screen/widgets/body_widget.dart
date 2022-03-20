import 'package:currency_app/views/bloc/bottom_nav_bar/bottom_nav_bar_cubit.dart';
import 'package:currency_app/views/pages/change_page/change_page.dart';
import 'package:currency_app/views/pages/currency_page/currency_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class BodyWidget extends StatefulWidget {

  const BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  final List<Widget> _tabs = const [ChangePage(), CurrencyPage()];

  @override
  Widget build(BuildContext context) {
    final bottomNavBarCubit = context.watch<BottomNavBarCubit>();
    final state = bottomNavBarCubit.state;
    return IndexedStack(children: _tabs, index: state.index);
  }
}