import 'package:flutter/material.dart';


class InfoDataWidget extends StatelessWidget {
  const InfoDataWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 15.0, right: 15.0),
      //padding: const EdgeInsets.all(25.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.blue,
      ),
      height: MediaQuery.of(context).size.height / 5,
      width: double.infinity,
      child: const Text('data'),
    );
  }
}

