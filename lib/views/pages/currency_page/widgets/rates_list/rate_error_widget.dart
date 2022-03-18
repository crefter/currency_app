import 'package:flutter/widgets.dart';

class RateErrorWidget extends StatelessWidget {
  const RateErrorWidget({
    Key? key,
    required this.errorMessage,
  }) : super(key: key);

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Text(errorMessage);
  }
}