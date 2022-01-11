import 'package:flutter/material.dart';
import 'package:health_clinic/widgets/about_widget_user_widget.dart';
import 'package:health_clinic/widgets/category_widget.dart';
import 'package:health_clinic/widgets/search_bar_widget.dart';
import 'package:health_clinic/widgets/today_card_widget.dart';
import 'package:health_clinic/widgets/top_doctor_widget.dart';


class MainPageWidget extends StatelessWidget {
  const MainPageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ///First widget in [Column]
            ///This Widget getting username and user avatar
            const AboutUserWidget(),

            ///Searching features in [SearchBarWidget]
            const SearchBarWidget(),

            ///Categories in this widget.
            ///Widget creating [GridView.builder]
            ///Datas in different two [List<Color>], [List<String>]
            const CategoryWidget(),

            /// This widget has dynamic data come from [List]
            /// And this widget inside [Container], [Row], [Text],
            const TodayCardWidget(),

            /// This widget in text 'Top Doctor' [Text] widget.
            Container(
              padding: const EdgeInsets.only(left: 20.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Top Doctor',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),

            ///Doctors in here create with [ListView.builder] dynamic.
            ///This widget has [Container] [ListView.builder] [Column].
            ///Padding gives with [Padding] widget.
            ///Elevation gives [Material] widgets' [elevation] property.
            ///Screen widget is [ListTile] datas comeing from local [List].
            const TopDoctorWidget()
          ],
        ),
      ),
    );
  }
}

