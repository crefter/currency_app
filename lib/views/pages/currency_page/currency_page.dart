import 'package:currency_app/consts.dart';
import 'package:currency_app/views/bloc/rate/rate_bloc.dart';
import 'package:currency_app/views/pages/currency_page/widgets/choice_rate_widget.dart';
import 'package:currency_app/views/widgets/choice_currency_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/src/provider.dart';

class CurrencyPage extends StatelessWidget {
  const CurrencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(Consts.currencyPagePadding),
        child: Column(
          children: [
            ChoiceCurrencyWidget(
              (currency) => context
                  .read<RateBloc>()
                  .add(RateCurrencyChosen(currency.name)),
            ),
            const SizedBox(
              height: Consts.heightBetweenCurrencyAndRateWidgets,
            ),
            const ChoiceRateWidget(),
          ],
        ),
      ),
    );
  }
}
