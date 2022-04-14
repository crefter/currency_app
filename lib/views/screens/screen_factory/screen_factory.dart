import 'package:currency_app/domain/usecases/find_rates_for_currency_use_case.dart';
import 'package:currency_app/domain/usecases/load_currencies_use_case.dart';
import 'package:currency_app/domain/usecases/load_rates_for_currency_use_case.dart';
import 'package:currency_app/views/bloc/currency/currency_bloc.dart';
import 'package:currency_app/views/bloc/rate/rate_bloc.dart';
import 'package:currency_app/views/screens/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ScreenFactory {
  Widget makeMainScreen() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => RateBloc(
            GetIt.instance<LoadRatesForCurrencyUseCase>(),
            GetIt.instance<FindRatesForCurrencyUseCase>(),
          ),
        ),
        BlocProvider(
          create: (_) => CurrencyBloc(
            GetIt.instance<LoadCurrenciesUseCase>(),
          ),
        ),
      ],
      child: const MainScreen(),
    );
  }
}
