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
      height: MediaQuery.of(context).size.height / 16,
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
          CircleAvatar(
            backgroundColor: Colors.deepPurple,
            backgroundImage: AssetImage(docAvatar[0]),
          )
        ],
      ),
    );
  }
}
