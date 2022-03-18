import 'package:currency_app/domain/entities/rate.dart';
import 'package:currency_app/views/pages/currency_page/widgets/rates_list/rates_list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RateLoadedWidget extends StatefulWidget {
  const RateLoadedWidget({
    Key? key,
    required this.rates,
  }) : super(key: key);

  final List<Rate> rates;

  @override
  State<RateLoadedWidget> createState() => _RateLoadedWidgetState();
}

class _RateLoadedWidgetState extends State<RateLoadedWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: widget.rates.length,
      itemBuilder: (context, index) {
        return RatesListItemWidget(
          name: widget.rates[index].name,
          value: widget.rates[index].value,
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          color: Colors.blue,
        );
      },
    );
  }
}