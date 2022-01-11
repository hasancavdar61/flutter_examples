import 'package:flutter/material.dart';
import 'package:health_clinic/utils/static.dart';

class AboutUserWidget extends StatelessWidget {
  const AboutUserWidget({
    Key? key,
    this.commonData,
  }) : super(key: key);

  final String? commonData;

  @override
  Widget build(BuildContext context) {
    return

        /// [Container] has a [Row] -> [RichText] and [CircleAvatar]
        /// [MediaQuery] used. For Responsive design.
        /// This [Widget] is static now.
        Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      height: MediaQuery.of(context).size.height / 12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: 'Hello,',
                    style: Theme.of(context).textTheme.headline4),
                const TextSpan(text: '\n'),
                TextSpan(
                    text: '$commonData ✌️',
                    style: Theme.of(context).textTheme.headline3),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: Text('Dou you want Exit?'),
                      actions: [
                        TextButton(
                          onPressed: () =>
                              Navigator.pop(context, false), // passing false
                          child: Text('No'),
                        ),
                        TextButton(
                          onPressed: () =>
                              Navigator.pop(context, true), // passing true
                          child: Text('Yes'),
                        ),
                      ],
                    );
                  }).then((exit) {
                if (exit == null) return;

                if (exit) {
                  // user pressed Yes button
                } else {
                  // user pressed No button
                }
              });
            },
            child: CircleAvatar(
              backgroundColor: Colors.deepPurple,
              backgroundImage: AssetImage(docAvatar[0]),
            ),
          )
        ],
      ),
    );
  }
}

/**
 * showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    scrollable: true,
                    title: Text('Do you want to exit app ?'),
                    // Retrieve the text the that user has entered by using the
                    // TextEditingController.
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Yes'),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('No'),
                        ),
                      ],
                    ),
                  );
                },
              );
 */
