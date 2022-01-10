import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UserWelcomeWidget extends StatelessWidget {
  const UserWelcomeWidget({
    Key? key,
    this.geldi,
    this.checkUserName,
  }) : super(key: key);
  final String? geldi;
  final bool? checkUserName;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height / 4,
        width: double.infinity,
        color: Colors.deepPurpleAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.purple,
              ),
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: AppLocalizations.of(context)!.hello,
                      style: Theme.of(context).textTheme.headline6),
                  TextSpan(text: AppLocalizations.of(context)!.freeSpace),
                  TextSpan(
                      text: checkUserName! ? "$geldi 👋" : " Lovely Customer ",
                      style: Theme.of(context).textTheme.headline5),
                ],
              ),
            ),
          ],
        ));
  }
}
