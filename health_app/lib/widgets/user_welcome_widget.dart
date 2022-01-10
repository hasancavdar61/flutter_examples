import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UserWelcomeWidget extends StatelessWidget {
  const UserWelcomeWidget({
    Key? key,
    this.geldi,
  }) : super(key: key);
  final String? geldi;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
        alignment: Alignment.bottomLeft,
        height: MediaQuery.of(context).size.height / 7,
        width: double.infinity,
        color: Colors.deepPurpleAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: AppLocalizations.of(context)!.hello,
                      style: Theme.of(context).textTheme.headline6),
                  TextSpan(text: AppLocalizations.of(context)!.freeSpace),
                  TextSpan(
                      text: geldi.toString().toUpperCase(),
                      style: Theme.of(context).textTheme.headline5),
                ],
              ),
            ),
          ],
        ));
  }
}
