import 'package:flutter/widgets.dart';

import '../../../../../consts.dart';

class RatesListItemWidget extends StatelessWidget {
  const RatesListItemWidget({
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