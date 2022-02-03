import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/views/bloc/currency/currency_bloc.dart';
import 'package:currency_app/views/bloc/rate/rate_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

import '../../../../../../consts.dart';
import '../../../../../../strings.dart';

class ChoiceCurrencyWidget extends StatelessWidget {
  const ChoiceCurrencyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CurrencyBloc>().state;
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          Strings.enterCurrencyHint,
        ),
        const SizedBox(
          width: Consts.defaultWidthOfGap,
        ),
        Expanded(
            child: Autocomplete<Currency>(
              displayStringForOption: (option) => option.name,
              optionsBuilder: (textEditingValue) {
                final query = textEditingValue.text;
                if (query.isEmpty) {
                  return const Iterable<Currency>.empty();
                } else {
                  if (state is CurrencyLoaded) {
                    return state.currencies.where((element) =>
                        element.name.toLowerCase().contains(query.toLowerCase()));
                  }
                }
                return const Iterable<Currency>.empty();
              },
              onSelected: (Currency currency) =>
                  context.read<RateBloc>().add(RateCurrencyChosen(currency.name)),
              fieldViewBuilder:
                  (context, textEditingController, focusNode, onFieldSubmitted) {
                return TextFormField(
                  decoration: const InputDecoration(hintText: Strings.enterCurrencyHint),
                  focusNode: focusNode,
                  controller: textEditingController,
                  onFieldSubmitted: (_) => onFieldSubmitted(),
                );
              },
            )),
      ],
    );
  }
}