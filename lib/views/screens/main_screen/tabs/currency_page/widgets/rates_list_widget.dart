import 'package:currency_app/consts.dart';
import 'package:currency_app/views/bloc/rate/rate_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RatesListWidget extends StatelessWidget {
  const RatesListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: Consts.heightRatesList),
      child: BlocBuilder<RateBloc, RateState>(builder: (context, state) {
        if (state is RateLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is RateLoaded) {
          final rates = state.rates;
          return ListView.separated(
            shrinkWrap: true,
            itemCount: rates.length,
            itemBuilder: (context, index) {
              return Text(
                  '${rates[index].name} : ${rates[index].value.toStringAsFixed(Consts.digitAfterDecimalPoint)}');
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                color: Colors.blue,
              );
            },
          );
        } else if (state is RateError) {
          return Text(state.errorMessage);
        }
        return const SizedBox.shrink();
      }),
    );
  }
}
