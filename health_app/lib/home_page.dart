import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/widgets/custom_drawer.dart';
import 'package:health_app/widgets/home_page_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  var dataOne = Get.arguments;
  IconData? iconChanged = Icons.dark_mode;
  Color colorChanged = Colors.grey.shade200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: const CustomDrawer(),
        backgroundColor: colorChanged,
        appBar: AppBar(
          title: const Text("Health App"),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
            color: Colors.white,
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  if (iconChanged == Icons.dark_mode) {
                    iconChanged = Icons.light_mode;
                    colorChanged = Colors.black;
                  } else if (iconChanged == Icons.light_mode) {
                    iconChanged = Icons.dark_mode;
                    colorChanged = Colors.grey.shade200;
                  }
                });
              },
              icon: Icon(iconChanged),
            ),
          ],
          backgroundColor: Colors.deepPurpleAccent,
          elevation: 0,
        ),
        body: HomePageWidget(
          geldii: dataOne,
        ));
  }
}
