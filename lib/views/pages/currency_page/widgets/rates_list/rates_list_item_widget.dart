import 'package:currency_app/consts.dart';
import 'package:flutter/widgets.dart';

class RatesListItemWidget extends StatelessWidget {
  final String name;
  final double value;

  const RatesListItemWidget({
    required this.name,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$name : ${value.toStringAsFixed(Consts.digitAfterDecimalPoint)}',
    );
  }
}
