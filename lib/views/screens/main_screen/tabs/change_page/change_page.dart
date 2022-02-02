import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChangePage extends StatelessWidget {
  const ChangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.red),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('To change'),
          Center(
            child: Text('Change page'),
          ),
        ],
      ),
    );
  }
}