import 'package:flutter/material.dart';

class ClinicTextWidget extends StatelessWidget {
  const ClinicTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25.0),
      height: MediaQuery.of(context).size.height / 12,
      width: double.infinity,
      color: Colors.grey.shade200,
      child: Text('Clinics', style: Theme.of(context).textTheme.headline6),
    );
  }
}
