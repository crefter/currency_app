import 'package:currency_app/domain/usecases/convert_currencies_use_case.dart';
import 'package:currency_app/views/bloc/convert_currencies/convert_currencies_cubit.dart';
import 'package:currency_app/views/widgets/choice_currency_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ChangePage extends StatelessWidget {
  const ChangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ConvertCurrenciesCubit(GetIt.instance<ConvertCurrenciesUseCase>()),
      child: Container(
        decoration: const BoxDecoration(color: Colors.red),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChoiceCurrencyWidget((_) {}),
            ChoiceCurrencyWidget((_) {}),
          ],
        ),
      ),
    );
  }
}