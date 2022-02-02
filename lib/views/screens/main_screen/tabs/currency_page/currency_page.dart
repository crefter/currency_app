import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/views/bloc/currency/currency_bloc.dart';
import 'package:currency_app/views/bloc/rate/rate_bloc.dart';
import 'package:currency_app/views/screens/main_screen/tabs/currency_page/widgets/rates_list_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/src/provider.dart';

class CurrencyPage extends StatelessWidget {
  const CurrencyPage();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CurrencyBloc>().state;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Выберите валюту:',
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                    child: Autocomplete<Currency>(
                  displayStringForOption: (option) => option.name,
                  optionsBuilder: (textEditingValue) {
                    final query = textEditingValue.text;
                    if (query.isEmpty) {
                      return Iterable<Currency>.empty();
                    } else {
                      if (state is CurrencyLoaded)
                        return state.currencies.where((element) => element.name
                            .toLowerCase()
                            .contains(query.toLowerCase()));
                    }
                    return Iterable<Currency>.empty();
                  },
                  onSelected: (Currency currency) => context
                      .read<RateBloc>()
                      .add(RateCurrencyChosen(currency.name)),
                )),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Text('Рейты:'),
            SizedBox(
              height: 10.0,
            ),
            Builder(builder: (context) {
              return Flex(
                direction: Axis.vertical,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    onChanged: (text) {
                      context.read<RateBloc>().add(RateFoundStarted(text));
                    },
                  ),
                ],
              );
            }),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: RatesListWidget(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
