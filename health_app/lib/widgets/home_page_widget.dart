import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/widgets/clinic_text_widget.dart';
import 'package:health_app/widgets/custom_card.dart';
import 'package:health_app/widgets/user_welcome_widget.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key, this.geldii}) : super(key: key);
  final String? geldii;
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UserWelcomeWidget(
              geldi: widget.geldii,
              checkUserName: true,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height / 12,
                width: double.infinity,
              ),
            ),
            ClinicsRowWidgets(),
            const ClinicTextWidget(),

            // ! BUİLDER İLE SARILACAK
            ProfileCardOther(
              onTap: () => Get.toNamed('/DetailPage'),
              mainIcon: 'baby.png',
              name: 'Baby',
              surname: 'Health',
              departmentIcon: Icons.ac_unit_outlined,
              departmentName: 'For your baby',
              lastColor: const Color(0xFF8135A4),
            ),
            ProfileCardOther(
              onTap: () {},
              mainIcon: 'brain.png',
              name: 'Brain',
              surname: 'Health',
              departmentIcon: Icons.ac_unit_outlined,
              departmentName: 'The most important point',
              lastColor: const Color(0xFF8135A4),
            ),
            ProfileCardOther(
              onTap: () {},
              mainIcon: 'coronavirus.png',
              name: 'Corona',
              surname: 'Virus',
              departmentIcon: Icons.ac_unit_outlined,
              departmentName: 'Stay at home',
              lastColor: const Color(0xFF8135A4),
            ),
            ProfileCardOther(
              onTap: () {},
              mainIcon: 'diabets.png',
              name: 'Diabetic',
              surname: 'Problems',
              departmentIcon: Icons.ac_unit_outlined,
              departmentName: 'No more sugar',
              lastColor: const Color(0xFF8135A4),
            ),
            ProfileCardOther(
              onTap: () {},
              mainIcon: 'heart.png',
              name: 'Heart',
              surname: 'Health',
              departmentIcon: Icons.ac_unit_outlined,
              departmentName: 'HeartCare',
              lastColor: const Color(0xFF8135A4),
            ),
            ProfileCardOther(
              onTap: () {},
              mainIcon: 'stethescope.png',
              name: 'Internal',
              surname: 'Health',
              departmentIcon: Icons.ac_unit_outlined,
              departmentName: 'Internal medicine control',
              lastColor: const Color(0xFF8135A4),
            ),
          ],
        ),
      ),
    );
  }
}

class ClinicsRowWidgets extends StatelessWidget {
  ClinicsRowWidgets({
    Key? key, this.selected,
  }) : super(key: key);

  final int? selected;

  final List<String> routes = [
    '/DetailPage',
    '/DetailPageTwo',
    '/DEtailPageThree',
    '/DetailPageFour'
  ];
  final List<String> routesImages = [
    'assets/baby.png',
    'assets/brain.png',
    'assets/coronavius.png',
    'assets/heart.png'
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: routesImages.length,
            itemBuilder: (BuildContext context, int index) {
              return CustomGestureDetector(
                routes: routes,
                routesImages: routesImages,
                index: index,
              );
            },
          ),
          // ignore: prefer_const_constructors
        ],
      ),
    );
  }
}

class CustomGestureDetector extends StatelessWidget {
  const CustomGestureDetector({
    Key? key,
    required this.routes,
    required this.routesImages,
    this.index,
  }) : super(key: key);

  final List<String> routes;
  final List<String> routesImages;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(routes[0]),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage(routesImages[0]),
      ),
    );
  }
}
