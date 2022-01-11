import 'package:flutter/material.dart';
import 'package:health_clinic/utils/static.dart';


class TodayCardWidget extends StatelessWidget {
  const TodayCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

        /// main [Container] has all widgets.
        Container(
      height: MediaQuery.of(context).size.height / 3,
      padding: const EdgeInsets.all(20.0),
      child:

          /// [Column] inside [Row] has [Text].
          /// between widgets with [MainAxisAlignment.spaceBetween]
          Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Appointment Today',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                'See All',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),

          /// [SizedBox] give us free space between widgets.
          const SizedBox(
            height: 20.0,
          ),

          /// This widget has [Column] in [ListTile] read data from
          /// [List] -> docColor, docLabel, docSubLabel
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent.shade400,
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: docColor.first,
                  ),
                  title: Text(
                    docLabel.first,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  subtitle: Text(
                    docSubLabel.first,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),

                /// This widget give us has static informations about time.
                /// [Row] in [Icon] and [Text] take theme from [Theme.of(context)].
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Monday, July 29',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Icon(
                          Icons.timer,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '11:00 - 12:00 AM',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

