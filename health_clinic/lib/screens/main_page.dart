import 'package:flutter/material.dart';
import 'package:health_clinic/widgets/bottom_nav_bar_widget.dart';
import 'package:health_clinic/widgets/main_page_widget.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar:

          /// Static type [BottomBarWithItems]
          BottomBarWithItems(),

      ///[MainPage] design come from [MainPageWidget]
      body: MainPageWidget(),
    );
  }
}
