import 'package:currency_app/consts.dart';
import 'package:currency_app/strings.dart';
import 'package:currency_app/views/bloc/rate/rate_bloc.dart';
import 'package:currency_app/views/pages/currency_page/widgets/rates_list_widget.dart';
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
        const Text(Strings.rateHint),
        const SizedBox(
          height: Consts.defaultHeightOfGap,
        ),
        Builder(builder: (context) {
          return Flex(
            direction: Axis.vertical,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: Strings.enterCurrencyHint,
                ),
                onChanged: (text) {
                  context.read<RateBloc>().add(RateFoundStarted(text));
                },
              ),
            ],
          );
        }),
        const SizedBox(
          height: Consts.defaultHeightOfGap,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
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