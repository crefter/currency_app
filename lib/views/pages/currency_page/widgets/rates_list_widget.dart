import 'package:currency_app/consts.dart';
import 'package:currency_app/domain/entities/rate.dart';
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
          return const _RateLoadingWidget();
        } else if (state is RateLoaded) {
          final rates = state.rates;
          return _RateLoadedWidget(rates: rates);
        } else if (state is RateError) {
          return _RateErrorWidget(
            errorMessage: state.errorMessage,
          );
        }
        return const SizedBox.shrink();
      }),
    );
  }
}

class _RateLoadingWidget extends StatelessWidget {
  const _RateLoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _RateErrorWidget extends StatelessWidget {
  const _RateErrorWidget({
    Key? key,
    required this.errorMessage,
  }) : super(key: key);

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Text(errorMessage);
  }
}

class _RateLoadedWidget extends StatelessWidget {
  const _RateLoadedWidget({
    Key? key,
    required this.rates,
  }) : super(key: key);

  final List<Rate> rates;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: rates.length,
      itemBuilder: (context, index) {
        return _RatesListItemWidget(
          name: rates[index].name,
          value: rates[index].value,
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          color: Colors.blue,
        );
      },
    );
  }
}

class _RatesListItemWidget extends StatelessWidget {
  const _RatesListItemWidget({
    Key? key,
    required this.name,
    required this.value,
  }) : super(key: key);

  final String name;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Text(
        '$name : ${value.toStringAsFixed(Consts.digitAfterDecimalPoint)}');
  }
}
