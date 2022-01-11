import 'package:flutter/material.dart';


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

