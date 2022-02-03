import 'package:currency_app/consts.dart';
import 'package:currency_app/strings.dart';
import 'package:currency_app/views/bloc/rate/rate_bloc.dart';
import 'package:currency_app/views/screens/main_screen/tabs/currency_page/widgets/rates_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class ChoiceRateWidget extends StatelessWidget {
  const ChoiceRateWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Strings.rateHint),
        SizedBox(
          height: Consts.defaultHeightOfGap,
        ),
        Builder(builder: (context) {
          return Flex(
            direction: Axis.vertical,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: Strings.enterCurrencyHint,
                ),
                onChanged: (text) {
                  context.read<RateBloc>().add(RateFoundStarted(text));
                },
              ),
            ],
          );
        }),
        SizedBox(
          height: Consts.defaultHeightOfGap,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: Consts.defaultHeightOfGap,
            ),
            Expanded(
              child: RatesListWidget(),
            ),
          ],
        ),
      ],
    );
  }
}