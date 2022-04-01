import 'package:currency_app/views/bloc/convert_currencies/convert_currencies_cubit.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/src/provider.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ConvertCurrenciesCubit>().state;
    return state.status == ConvertCurrenciesStatus.failure
        ? Text(state.exception)
        : Text('Результат: ${state.answer.result}');
  }
}
