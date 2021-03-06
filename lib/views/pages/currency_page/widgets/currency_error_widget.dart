import 'package:currency_app/consts.dart';
import 'package:currency_app/views/bloc/currency/currency_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/src/provider.dart';

class CurrencyErrorWidget extends StatelessWidget {
  const CurrencyErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final errorMessage = context.select<CurrencyBloc, String>((bloc) {
      final state = bloc.state as CurrencyStateError;
      return state.errorMessage;
    });
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(Consts.defaultBorderRadius),
        ),
      ),
      child: Text(errorMessage),
    );
  }
}
