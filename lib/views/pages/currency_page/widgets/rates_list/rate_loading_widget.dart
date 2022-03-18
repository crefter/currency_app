import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RateLoadingWidget extends StatelessWidget {
  const RateLoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}