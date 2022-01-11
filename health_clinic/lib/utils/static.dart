import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme textTheme() {
  return TextTheme(
    bodyText1: GoogleFonts.beVietnamPro(
        color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
    bodyText2: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 11,
    ),
    headline3: GoogleFonts.beVietnamPro(
      color: Colors.deepPurpleAccent.shade400,
      fontSize: 22,
      fontWeight: FontWeight.w700,
    ),
    headline4: GoogleFonts.beVietnamPro(
      color: Colors.deepPurpleAccent.shade400,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ),
    headline5: GoogleFonts.beVietnamPro(
      color: Colors.deepPurpleAccent.shade400,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
    headline6: const TextStyle(
      color: Colors.black45,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
  );
}

final List<String> aboutDoctorText = [
  'Dr. Gürkan Fikret Günak is Flutter Proffessor.\nHe has a lot of students.',
  'Hasan Çavdar is Flutter Intern.\nHe loves Flutter.',
  'Berke Umut Yaylı is Manager.\nHe is manager of hospital.',
];
final List<String> docAvatar = [
  'assets/gurkan_hoca.jpg',
  'assets/hasan.jpg',
  'assets/berke.jpg',
];
final List<Color> docColor = [
  Colors.black,
  Colors.purple,
  Colors.pink,
];
final List<String> docLabel = [
  'Dr. Gürkan Fikret Günak',
  'Hasan Çavdar',
  'Berke Umut Yaylı',
];
final List<String> docSubLabel = [
  'Flutter Doctor',
  'Flutter Intern',
  'Manager',
];

final List<String> routeNames = ['/DoctorOne', '/DoctorTwo', '/DoctorThree'];

/// Category [Color]
final List<Color> categoryColor = [
  Colors.black,
  Colors.purple,
  Colors.pink,
  Colors.red
];
final List<String> categoryData = ['Covid 19', 'Hospital', 'Ambulance', 'Pill'];

Map<String, dynamic> staticText = {
  'topDoc': 'Top Doctor',
};
