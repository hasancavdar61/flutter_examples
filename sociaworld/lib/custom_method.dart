import 'package:flutter/material.dart';
import 'package:sociaworld/widgets/custom_bottom_nav_bar.dart';
import 'package:sociaworld/widgets/custom_card_widget.dart';
import 'package:sociaworld/widgets/custom_profile_card.dart';
import 'package:sociaworld/widgets/custom_profile_card_other.dart';

class CustomCardView extends StatelessWidget {
  const CustomCardView({Key? key}) : super(key: key);
  static const String imageUrl =
      'https://btkcampus.com.tr/files/mobil_dev./ios_gelistirme_dev.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Examples'),
      ),
      bottomNavigationBar: const CustomBottomNavBar(
        bottomNavBarItem: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Main'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomCardWidget(
              borderRadius: BorderRadius.circular(10.0),
              imageUrl: imageUrl,
              listTitle: 'image',
              listSubtitle: 'image subtitle',
              buttonTextOne: 'Yes',
              buttonFunctionOne: () {},
              buttonTextTwo: 'No',
              buttonFunctionTwo: () {},
              iconData: Icons.cancel,
            ),
            const CustomProfileCard(
              departmentColor: Colors.deepPurple,
              profilePhoto: 'assets/hsncvdr.jpg',
              departmentIconColor: Colors.black87,
              departmentLabel: 'MD',
              departmentLabelColor: Colors.white,
              name: 'Hasan',
              surname: 'Çavdar',
              departmentName: 'Management Department',
            ),
            const ProfileCardOther(
              profilePhoto: 'assets/hsncvdr.jpg',
              name: 'Hasan',
              surname: 'Çavdar',
              departmentIcon: Icons.account_tree_rounded,
              departmentName: 'Management Department',
            )
          ],
        ),
      ),
    );
  }
}
