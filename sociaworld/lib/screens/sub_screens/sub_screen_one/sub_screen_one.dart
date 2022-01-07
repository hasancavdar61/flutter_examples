import 'package:flutter/material.dart';
import 'package:sociaworld/widgets/bottom_app_bar.dart';
import 'package:sociaworld/widgets/sub_screen_widget.dart';

class SubScreenOne extends StatefulWidget {
  const SubScreenOne({
    Key? key,
  }) : super(key: key);

  @override
  State<SubScreenOne> createState() => _SubScreenOneState();
}

class _SubScreenOneState extends State<SubScreenOne> {
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
        returnText: 'No data',
      ),
    );
  }
}
