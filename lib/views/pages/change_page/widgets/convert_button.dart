import 'package:currency_app/strings.dart';
import 'package:currency_app/views/bloc/convert_currencies/convert_currencies_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/src/provider.dart';

class ConvertButton extends StatelessWidget {
  final ConvertCurrenciesState _state;

  const ConvertButton({
    required ConvertCurrenciesState state,
    Key? key,
  }) : _state = state, super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 45,
      child: ElevatedButton(
        onPressed: _state.status == ConvertCurrenciesStatus.ready ||
            _state.status == ConvertCurrenciesStatus.failure ||
            _state.status == ConvertCurrenciesStatus.success
            ? () => context.read<ConvertCurrenciesCubit>().convert()
            : null,
        child: _state.status == ConvertCurrenciesStatus.converting
            ? const CircularProgressIndicator.adaptive()
            : _state.status == ConvertCurrenciesStatus.failure
                ? const Text(Strings.tryOneTime)
                : const Text(Strings.convertButtonText),
      ),
    );
  }
}
