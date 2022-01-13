import 'package:flutter_bloc/flutter_bloc.dart';

import 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit()
      : super(BottomNavBarState.firstPage());

  void changeBottomNavBar(BottomNavBarItems item) {
    switch(item) {
      case BottomNavBarItems.First:
        emit(BottomNavBarState.firstPage());
        break;
      case BottomNavBarItems.Second:
        emit(BottomNavBarState.secondPage());
        break;
    }
  }
}
