import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

final controller = TextEditingController();

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome Health Clinic',
            textAlign: TextAlign.center,
            style: GoogleFonts.fredokaOne(
                color: Colors.deepPurpleAccent.shade400, fontSize: 50),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                  label: Text('Enter Name'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),

          ///This widget pass data to [MainPage] with [Get.arguments]
          ElevatedButton(
            onPressed: () {
              Get.offNamed('/MainPage', arguments: controller.text);
            },
            child: const Text('Go'),
          ),
        ],
      ),
    );
  }
}
