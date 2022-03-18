import 'package:currency_app/consts.dart';
import 'package:currency_app/strings.dart';
import 'package:currency_app/views/screens/main_screen/widgets/body_widget.dart';
import 'package:currency_app/views/screens/main_screen/widgets/bottom_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.mainPageName),
        elevation: Consts.appBarElevation,
      ),
      body: const BodyWidget(),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
