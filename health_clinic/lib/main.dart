import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: TextTheme(
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
            color: Colors.yellow.shade800,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
          headline6: const TextStyle(
            color: Colors.black45,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:

          /// Static type [BottomBarWithItems]
          const BottomBarWithItems(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ///First widget in [Column]
              ///This Widget getting username and user avatar
              const AboutUserWidget(),

              ///Searching features in [SearchBarWidget]
              const SearchBarWidget(),

              ///Categories in this widget.
              ///Widget creating [GridView.builder]
              ///Datas in different two [List<Color>], [List<String>]
              CategoryWidget(),

              /// This widget has dynamic data come from [List]
              /// And this widget inside [Container], [Row], [Text],
              TodayCardWidget(),

              ///W
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Column(
                  children: [
                    Text(
                      'Top Doctor',
                      style: Theme.of(context).textTheme.headline4,
                      textAlign: TextAlign.start,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 15.0),
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: docLabel.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Material(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    elevation: 2,
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        backgroundColor: docColor[index],
                                      ),
                                      title: Text(
                                        docLabel[index],
                                      ),
                                      subtitle: Text(
                                        docSubLabel[index],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TodayCardWidget extends StatelessWidget {
  TodayCardWidget({
    Key? key,
  }) : super(key: key);

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
  @override
  Widget build(BuildContext context) {
    return

        /// main [Container] has all widgets.
        Container(
      height: MediaQuery.of(context).size.height / 3,
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
          const SizedBox(
            height: 20.0,
          ),

          /// This widget has [Column] in [ListTile] read data from
          /// [List] -> docColor, docLabel, docSubLabel
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent.shade400,
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: docColor.first,
                  ),
                  title: Text(
                    docLabel.first,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  subtitle: Text(
                    docSubLabel.first,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),

                /// This widget give us has static informations about time.
                /// [Row] in [Icon] and [Text] take theme from [Theme.of(context)].
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Monday, July 29',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Icon(
                          Icons.timer,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '11:00 - 12:00 AM',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  CategoryWidget({
    Key? key,
  }) : super(key: key);

  final List<Color> categoryColor = [
    Colors.black,
    Colors.purple,
    Colors.pink,
    Colors.white
  ];
  final List<String> categoryData = [
    'Covid 19',
    'hospital',
    'Ambulance',
    'Pill'
  ];

  @override
  Widget build(BuildContext context) {
    ///Widget creating [GridView.builder]
    ///Datas in different two [List<Color>], [List<String>]
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 10,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: categoryColor.length),
        itemCount: categoryColor.length,
        itemBuilder: (BuildContext context, index) {
          return Column(
            children: [
              CircleAvatar(
                backgroundColor: categoryColor[index],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                categoryData[index],
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          );
        },
      ),
    );
  }
}

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.search_rounded,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Search a doctor or health issue',
              style: Theme.of(context).textTheme.headline6,
            )
          ],
        ),
      ),
    );
  }
}

class AboutUserWidget extends StatelessWidget {
  const AboutUserWidget({
    Key? key,
  }) : super(key: key);

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
                    text: 'Esra Malkoç ✌️',
                    style: Theme.of(context).textTheme.headline3),
              ],
            ),
          ),
          const CircleAvatar(
            backgroundColor: Colors.deepPurple,
          )
        ],
      ),
    );
  }
}

class BottomBarWithItems extends StatelessWidget {
  const BottomBarWithItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.deepPurpleAccent.shade400.withOpacity(0.5),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.ac_unit_outlined,
            ),
            label: 'data'),
        BottomNavigationBarItem(
          icon: Icon(Icons.ac_unit_outlined),
          label: 'data',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.ac_unit_outlined),
          label: 'data',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.ac_unit_outlined),
          label: 'data',
        ),
      ],
    );
  }
}
