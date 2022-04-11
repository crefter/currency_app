import 'package:currency_app/strings.dart';
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
        : state.status == ConvertCurrenciesStatus.success &&
                state.exception.isNotEmpty
            ? Text('${Strings.result} ${state.answer.result} ${Strings.getFromCache}')
            : state.status == ConvertCurrenciesStatus.success
                ? Text('${Strings.result} ${state.answer.result}')
                : const Text(Strings.waitingInput);
  }
}
