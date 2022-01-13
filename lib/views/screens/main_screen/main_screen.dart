import 'package:currency_app/views/bottom_nav_bar/bottom_nav_bar_cubit.dart';
import 'package:currency_app/views/bottom_nav_bar/bottom_nav_bar_state.dart';
import 'package:currency_app/views/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../consts.dart';
import 'tabs/change_page/change_page.dart';
import 'tabs/currency_page/currency_page.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Consts.mainPageName),
        elevation: 10.0,
      ),
      body: const _BodyWidget(),
      floatingActionButton: const _FABWidget(),
      bottomNavigationBar: const _BottomNavBarWidget(),
    );
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({
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

class _FABWidget extends StatelessWidget {
  const _FABWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.watch<BottomNavBarCubit>().state.index == 0) {
      return FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_outlined),
        mini: false,
      );
    }
    return Container();
  }
}

class _BottomNavBarWidget extends StatelessWidget {
  const _BottomNavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return BottomNavigationBar(
          showUnselectedLabels: true,
          selectedItemColor: AppTheme.current.primaryColor,
          unselectedItemColor: AppTheme.current.unselectedWidgetColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: state.index,
          onTap: (index) {
            if (index == 0) {
              context
                  .read<BottomNavBarCubit>()
                  .changeBottomNavBar(BottomNavBarItems.First);
            } else if (index == 1) {
              context
                  .read<BottomNavBarCubit>()
                  .changeBottomNavBar(BottomNavBarItems.Second);
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.change_circle_outlined),
              label: 'Change',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: 'Currency',
            ),
          ],
        );
      },
    );
  }
}
