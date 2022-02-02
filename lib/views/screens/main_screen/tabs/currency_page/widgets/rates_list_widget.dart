import 'package:currency_app/views/bloc/rate/rate_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RatesListWidget extends StatelessWidget {
  const RatesListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 400),
      child: BlocBuilder<RateBloc, RateState>(builder: (context, state) {
        if (state is RateLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is RateLoaded) {
          final rates = state.rates;
          return ListView.separated(
            shrinkWrap: true,
            itemCount: rates.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Text(rates[index].name),
                  Text(rates[index].value.toString()),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                color: Colors.blue,
              );
            },
          );
        } else if (state is RateError) {
          return Text(state.errorMessage);
        }
        return SizedBox.shrink();
      }),
    );
  }
}
