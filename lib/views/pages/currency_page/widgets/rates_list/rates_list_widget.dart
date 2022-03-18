import 'package:currency_app/consts.dart';

import 'package:currency_app/views/bloc/rate/rate_bloc.dart';
import 'package:currency_app/views/pages/currency_page/widgets/rates_list/rate_error_widget.dart';
import 'package:currency_app/views/pages/currency_page/widgets/rates_list/rate_loaded_widget.dart';
import 'package:currency_app/views/pages/currency_page/widgets/rates_list/rate_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RatesListWidget extends StatelessWidget {
  const RatesListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: Consts.heightRatesList),
      child: BlocBuilder<RateBloc, RateState>(
        builder: (context, state) {
          if (state is RateLoading) {
            return const RateLoadingWidget();
          } else if (state is RateLoaded) {
            final rates = state.rates;
            return RateLoadedWidget(rates: rates);
          } else if (state is RateError) {
            return RateErrorWidget(
              errorMessage: state.errorMessage,
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
