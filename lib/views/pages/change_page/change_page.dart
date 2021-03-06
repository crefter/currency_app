import 'package:currency_app/consts.dart';
import 'package:currency_app/domain/usecases/convert_currencies_use_case.dart';
import 'package:currency_app/domain/usecases/save_convertion_response_use_case.dart';
import 'package:currency_app/strings.dart';
import 'package:currency_app/views/bloc/convert_currencies/convert_currencies_cubit.dart';
import 'package:currency_app/views/pages/change_page/widgets/convert_button.dart';
import 'package:currency_app/views/pages/change_page/widgets/result_widget.dart';
import 'package:currency_app/views/widgets/choice_currency_widget.dart';
import 'package:currency_app/views/widgets/decimal_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ChangePage extends StatelessWidget {
  const ChangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ConvertCurrenciesCubit(
        GetIt.instance<ConvertCurrenciesUseCase>(),
        GetIt.instance<SaveConvertionResponseUseCase>(),
      ),
      child: BlocBuilder<ConvertCurrenciesCubit, ConvertCurrenciesState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 8.0,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: Consts.topPadding,
                  ),
                  ChoiceCurrencyWidget(
                    onSelected: (currency) =>
                        context.read<ConvertCurrenciesCubit>().checkToReady(
                              inputAmount: state.amount.toString(),
                              from: currency,
                              to: state.to,
                            ),
                  ),
                  ChoiceCurrencyWidget(
                    onSelected: (currency) =>
                        context.read<ConvertCurrenciesCubit>().checkToReady(
                              inputAmount: state.amount.toString(),
                              from: state.from,
                              to: currency,
                            ),
                  ),
                  const SizedBox(
                    height: Consts.defaultPaddingBetweenWidgets,
                  ),
                  DecimalTextField(
                    labelText: Strings.convertLabelTextField,
                    hintText: Strings.convertHintTextField,
                    onChanged: (value) =>
                        context.read<ConvertCurrenciesCubit>().checkToReady(
                              inputAmount: value,
                              from: state.from,
                              to: state.to,
                            ),
                  ),
                  const SizedBox(
                    height: Consts.defaultPaddingBetweenWidgets,
                  ),
                  ConvertButton(state: state),
                  const SizedBox(
                    height: Consts.defaultPaddingBetweenWidgets,
                  ),
                  const ResultWidget(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
