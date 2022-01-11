import 'package:flutter/material.dart';
import 'package:health_clinic/utils/static.dart';


class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
  }) : super(key: key);

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

