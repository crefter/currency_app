import 'package:currency_app/views/bloc/currency/currency_bloc.dart';
import 'package:currency_app/views/bloc/rate/rate_bloc.dart';
import 'package:currency_app/views/screens/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenFactory {
  Widget makeMainScreen() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => RateBloc(),
        ),
        BlocProvider(
          create: (_) => CurrencyBloc(),
        ),
      ],
      child: const MainScreen(),
    );
  }
}
