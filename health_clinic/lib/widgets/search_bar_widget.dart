import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    return 
    ///[Stack] is parent widget
    Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: const BorderRadius.all(
                Radius.circular(25),
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
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: AnimSearchBar(
            width: 400,
            textController: textController,
            onSuffixTap: () {},
            autoFocus: true,
            color: Colors.grey.shade200,
          ),
        ),
      ],
    );
/**
 * Padding(
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

Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: AnimSearchBar(
        width: 400,
        textController: textController,
        onSuffixTap: () {},
        autoFocus: true,
        color: Colors.deepPurpleAccent.shade400,
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
    );

 */
  }
}
