import 'package:currency_app/views/bloc/bottom_nav_bar/bottom_nav_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/src/provider.dart';

class FABWidget extends StatelessWidget {
  const FABWidget({
    Key? key,
  }) : super(key: key);

  static const indexChangePage = 0;

  @override
  Widget build(BuildContext context) {
    if (context.watch<BottomNavBarCubit>().state.index == indexChangePage) {
      return FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_outlined),
        mini: false,
      );
    }
    return Container();
  }
}