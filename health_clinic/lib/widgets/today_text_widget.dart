import 'package:flutter/material.dart';

class TodayTextWidget extends StatelessWidget {
  const TodayTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

        /// main [Container] has all widgets.
        Container(
      height: MediaQuery.of(context).size.height / 10,
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
        ],
      ),
    );
  }
}
