import 'package:currency_app/consts.dart';
import 'package:currency_app/views/screens/main_screen/tabs/currency_page/widgets/choice_currency_widget.dart';
import 'package:currency_app/views/screens/main_screen/tabs/currency_page/widgets/choice_rate_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CurrencyPage extends StatelessWidget {
  const CurrencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(Consts.currencyPagePadding),
        child: Column(
          children: const [
            ChoiceCurrencyWidget(),
            SizedBox(
              height: Consts.heightBetweenCurrencyAndRateWidgets,
            ),
            ChoiceRateWidget(),
          ],
        ),
      ),
    );
  }
}
