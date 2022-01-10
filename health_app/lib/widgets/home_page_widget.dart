import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/utils/statics.dart';
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: clinicsRowWidgets(),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: ClinicTextWidget(),
            ),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return ProfileCardOther(
                    onTap: () => Get.toNamed('/DetailPage'),
                    mainIcon: 'baby.png',
                    name: 'Baby',
                    surname: 'Health',
                    departmentIcon: Icons.ac_unit_outlined,
                    departmentName: 'For your baby',
                    lastColor: const Color(0xFF8135A4),
                  );
                },
              ),
            ),

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

  SizedBox clinicsRowWidgets() {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: routes.length,
        ),
        itemCount: routes.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () => Get.toNamed(routes[index]),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(routesImages[index]),
                backgroundColor: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
