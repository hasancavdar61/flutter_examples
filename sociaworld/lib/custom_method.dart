import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sociaworld/utils/statics.dart';
import 'package:sociaworld/widgets/custom_card_widget.dart';
import 'package:sociaworld/widgets/custom_cards/custom_profile_card.dart';
import 'package:sociaworld/widgets/custom_cards/custom_profile_card_other.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomCardView extends StatefulWidget {
  const CustomCardView({Key? key}) : super(key: key);

  @override
  State<CustomCardView> createState() => _CustomCardViewState();
}

class _CustomCardViewState extends State<CustomCardView> {
  var data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //title: Text(AppLocalizations.of(context)!.helloWorld),
          ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomCardWidget(
              borderRadius: BorderRadius.circular(10.0),
              imageUrl: ImageUrls.mainCardImage,
              listTitle: data ?? 'SplashScreen Selector',
              listSubtitle: 'Select one and go to design.',
              buttonTextOne: 'Health',
              namedRouteOne: '/HomePage',
              buttonTextTwo: 'AI',
              namedRouteTwo: '/SplashVariantOne',
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
            ),
          ],
        ),
      ),
    );
  }
}
