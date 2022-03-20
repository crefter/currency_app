import 'package:currency_app/strings.dart';
import 'package:currency_app/views/bloc/bottom_nav_bar/bottom_nav_bar_cubit.dart';
import 'package:currency_app/views/bloc/bottom_nav_bar/bottom_nav_bar_state.dart';
import 'package:currency_app/views/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class BottomNavBarWidget extends StatelessWidget {
  static const indexChangePage = 0;
  static const indexCurrencyPage = 1;

  const BottomNavBarWidget({
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
            if (index == indexChangePage) {
              context
                  .read<BottomNavBarCubit>()
                  .changeBottomNavBar(BottomNavBarItems.First);
            } else if (index == indexCurrencyPage) {
              context
                  .read<BottomNavBarCubit>()
                  .changeBottomNavBar(BottomNavBarItems.Second);
            }
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.change_circle_outlined),
              label: Strings.changeLabel,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: Strings.currencyLabel,
            ),
          ],
        );
      },
    );
  }
}
