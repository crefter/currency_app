import 'package:currency_app/views/bloc/bottom_nav_bar/bottom_nav_bar_cubit.dart';
import 'package:currency_app/views/bloc/bottom_nav_bar/bottom_nav_bar_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late final BottomNavBarCubit bottomNavBarCubit;
  setUpAll(() {
    bottomNavBarCubit = BottomNavBarCubit();
  });
  group('BottomNavBarCubit tests', () {
    test(
      'initial state is BottomNavBarState.firstPage ',
      () {
        expect(bottomNavBarCubit.state, BottomNavBarState.firstPage());
      },
    );
    test(
      'should return BottomNavBarState.firstPage if '
      'item is BottomNavBarItems.First',
      () {
        bottomNavBarCubit.changeBottomNavBar(BottomNavBarItems.First);
        expect(bottomNavBarCubit.state, BottomNavBarState.firstPage());
      },
    );
    test(
      'should return BottomNavBarState.secondPage if '
          'item is BottomNavBarItems.Second',
          () {
        bottomNavBarCubit.changeBottomNavBar(BottomNavBarItems.Second);
        expect(bottomNavBarCubit.state, BottomNavBarState.secondPage());
      },
    );
  });
}
