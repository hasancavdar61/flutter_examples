import 'package:flutter/material.dart';
import 'package:sociaworld/widgets/bottom_app_bar.dart';
import 'package:sociaworld/widgets/sub_screen_widget.dart';

class SubScreenThree extends StatelessWidget {
  const SubScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomAppBarWidget(
        rustemText: 'RustemScreenOne',
        rustemTextTwo: 'RustemScreenTwo',
        goToRustem: 'RustemScreenOne',
        goToRustemTwo: 'RustemScreenTwo',
      ),
      body: SubScreenOneWidget(
        labelText: 'Send Data...',
        buttonLabel: 'Submit',
        dialogText: 'Data sending...',
        returnText: 'free',
      ),
    );
  }
}
