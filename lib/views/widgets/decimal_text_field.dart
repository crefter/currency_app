import 'package:currency_app/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class DecimalTextField extends StatelessWidget {

  final String _labelText;
  final String _hintText;
  final void Function(String value) _onChanged;

  const DecimalTextField({
    required void Function(String value) onChanged,
    required String labelText,
    required String hintText,
    Key? key,
  })  : _onChanged = onChanged,
        _labelText = labelText,
        _hintText = hintText,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3,
      child: TextField(
        onChanged: _onChanged,
        inputFormatters: [
          FilteringTextInputFormatter.allow(
            RegExp(Strings.decimalRegExp),
          ),
          TextInputFormatter.withFunction(
                (oldValue, newValue) => newValue.copyWith(
              text: newValue.text.replaceAll('.', ','),
            ),
          ),
        ],
        keyboardType: const TextInputType.numberWithOptions(
          decimal: true,
        ),
        decoration: InputDecoration(
          label: Text(_labelText),
          hintText: _hintText,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}