import 'package:currency_app/consts.dart';
import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/strings.dart';
import 'package:currency_app/views/bloc/currency/currency_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class ChoiceCurrencyWidget extends StatelessWidget {
  final void Function(Currency currency) _onSelected;

  const ChoiceCurrencyWidget({
    required void Function(Currency currency) onSelected,
    Key? key,
  })  : _onSelected = onSelected,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CurrencyBloc>().state;
    return Row(
      mainAxisSize: MainAxisSize.min,
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
                if (state is CurrencyStateLoaded) {
                  return state.currencies.where((element) =>
                      element.name.toLowerCase().contains(query.toLowerCase()));
                }
              }
              return const Iterable<Currency>.empty();
            },
            onSelected: _onSelected,
            fieldViewBuilder:
                (context, controller, focusNode, onFieldSubmitted) {
              return TextFormField(
                decoration:
                    const InputDecoration(hintText: Strings.enterCurrencyHint),
                focusNode: focusNode,
                controller: controller,
                onFieldSubmitted: (_) => onFieldSubmitted(),
              );
            },
          ),
        ),
      ],
    );
  }
}
