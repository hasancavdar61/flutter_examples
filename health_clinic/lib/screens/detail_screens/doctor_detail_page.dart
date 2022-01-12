import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_clinic/utils/static.dart';

class DoctorDetail extends StatefulWidget {
  const DoctorDetail({Key? key}) : super(key: key);

  @override
  _DoctorDetailState createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetail> {
  ///Common datas read with [Get.arguments] method.
  var commonDocAvatar = Get.arguments[0];
  var commonDocLabel = Get.arguments[1];
  var commonDocSubLabel = Get.arguments[2];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///[BottomAppBar] has container. For the future add on [GestureDetector]
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 40.0,
            left: 40.0,
            top: 15,
          ),
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height / 23,
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent.shade400,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(
              'Book Appointment',
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      body:

          ///Parent widget [SingleChildScrollView]
          SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Stacking [Material] widget
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                ///This widget has a [AppBar]
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.23,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.deepPurpleAccent.shade400),
                  child: AppBar(
                    title: Text(
                      'Detail Doctor',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                  ),
                ),

                ///Positioning with [Positioned] [ListTile]
                Positioned(
                  left: 0,
                  right: 0,
                  top: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Material(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                      elevation: 2,

                      ///[ListTile] parameters is dynamic from [List].
                      child: ListTile(
                        title: Text(
                          commonDocLabel,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        subtitle: Text(
                          commonDocSubLabel,
                        ),
                        trailing: CircleAvatar(
                          backgroundColor: docColor.first,
                          backgroundImage: AssetImage(commonDocAvatar),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            ///This widget has a [Row] widget.
            Container(
              padding: const EdgeInsets.all(6.0),
              height: MediaQuery.of(context).size.height / 6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildContainer('Patients', '100+', context),
                  _buildContainer('Experiences', '10 Years', context),
                  _buildContainer('Ratings', '4.0', context),
                ],
              ),
            ),

            ///About Doctor [TextSpan] datas come from [List]
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'About Doctor',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const TextSpan(text: '\n\n'),
                    TextSpan(
                        text: aboutDoctorText.first,
                        style: Theme.of(context).textTheme.headline6)
                  ],
                ),
              ),
            ),

            ///Location [Text] and map image in [Container] [AssetImage]
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Location',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: const DecorationImage(
                  //Image root here.
                  image: AssetImage('assets/map.png'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

///[_buildcontainer] for [dynamic] widget

_buildContainer(String label, String subLabel, BuildContext context) {
  return Container(
    width: 90,
    height: 90,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.grey.shade300.withOpacity(0.4),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          subLabel,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    ),
  );
}
