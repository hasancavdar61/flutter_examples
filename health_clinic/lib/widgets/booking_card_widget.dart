import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:health_clinic/utils/static.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

        ///Sliding effect with [CarouselSlider.builder]
        /// This widget has [Column] in [ListTile] read data from
        /// [List] -> docColor, docLabel, docSubLabel
        CarouselSlider.builder(
      itemCount: docLabel.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent.shade400,
            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          ),
          child: Column(
            children: [
              ///Avatar here
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: docColor[index],
                  backgroundImage: AssetImage(docAvatar[index]),
                ),

                ///[docLabel] here
                title: Text(
                  docLabel[index],
                  style: Theme.of(context).textTheme.bodyText1,
                ),

                ///[docSubLabel] here
                subtitle: Text(
                  docSubLabel[index],
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),

              /// This widget give us has static informations about time.
              /// [Row] in [Icon] and [Text] take theme from [Theme.of(context)].
              Container(
                padding: const EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white.withOpacity(0.4)),
                child: const Text('Monday, July 29'),
              )
            ],
          ),
        );
      },
      ///[CarouselOptions] is [CarouselSlider.builder] params.
      
          options: CarouselOptions(
          enableInfiniteScroll: true,
          enlargeCenterPage: true,
          autoPlay: true,
          pauseAutoPlayOnManualNavigate: true,
          autoPlayAnimationDuration: const Duration(seconds: 2),
          autoPlayCurve: Curves.ease),
    );
  }
}

/*
Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: const [
                                  Text(
                                    'Monday, July 29',
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
*/