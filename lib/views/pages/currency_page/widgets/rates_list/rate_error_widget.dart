import 'package:flutter/widgets.dart';

class RateErrorWidget extends StatelessWidget {
  final String errorMessage;

  const RateErrorWidget({
    required this.errorMessage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(errorMessage);
  }
}