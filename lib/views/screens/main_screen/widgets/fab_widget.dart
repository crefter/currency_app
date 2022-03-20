import 'package:currency_app/views/bloc/bottom_nav_bar/bottom_nav_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/src/provider.dart';

class FABWidget extends StatelessWidget {
  static const indexChangePage = 0;

  const FABWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.watch<BottomNavBarCubit>().state.index == indexChangePage) {
      return FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_outlined),
      );
    }
    return Container();
  }
}