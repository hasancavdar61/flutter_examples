import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_clinic/utils/static.dart';

class TopDoctorWidget extends StatefulWidget {
  const TopDoctorWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<TopDoctorWidget> createState() => _TopDoctorWidgetState();
}

class _TopDoctorWidgetState extends State<TopDoctorWidget> {
  @override
  Widget build(BuildContext context) {
    ///Parent widget [Container] height is [MediaQuery]
    ///[child] is [ListView.builder]
    return Container(
      padding: const EdgeInsets.all(20.0),
      height: MediaQuery.of(context).size.height / 2,
      child:

          ///Dynamic widgets create with [ListView.builder]
          ListView.builder(
        shrinkWrap: true,
        itemCount: docLabel.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child:

                    ///[Material] widget for [elevation] set 2.
                    GestureDetector(
                  onTap: () {
                    setState(() {
                      Get.toNamed(routeNames[index]);
                    });
                  },
                  child: Material(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    elevation: 2,

                    ///[ListTile] parameters is dynamic from [List].
                    child: ListTile(
                      leading: CircleAvatar(
                          backgroundColor: docColor[index],
                          backgroundImage: AssetImage(docAvatar[index])),
                      title: Text(
                        docLabel[index],
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      subtitle: Text(
                        docSubLabel[index],
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black.withOpacity(0.3),
              )
            ],
          );
        },
      ),
    );
  }
}
