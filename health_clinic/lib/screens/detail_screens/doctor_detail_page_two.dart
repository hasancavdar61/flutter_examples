import 'package:flutter/material.dart';
import 'package:health_clinic/utils/static.dart';


class DoctorDetailTwo extends StatefulWidget {
  const DoctorDetailTwo({Key? key}) : super(key: key);

  @override
  _DoctorDetailTwoState createState() => _DoctorDetailTwoState();
}

class _DoctorDetailTwoState extends State<DoctorDetailTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
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
                          docLabel[1],
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        subtitle: Text(
                          docSubLabel[1],
                        ),
                        trailing: CircleAvatar(
                          backgroundColor: docColor.first,
                          backgroundImage: AssetImage(docAvatar[1]),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(6.0),
              height: MediaQuery.of(context).size.height / 6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildContainer('Patients', '100+', context),
                  buildContainer('Experiences', '10 Years', context),
                  buildContainer('Ratings', '4.0', context),
                ],
              ),
            ),
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
                        text: aboutDoctorText[1],
                        style: Theme.of(context).textTheme.headline6)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Location',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: const DecorationImage(
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

buildContainer(String label, String subLabel, BuildContext context) {
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

  