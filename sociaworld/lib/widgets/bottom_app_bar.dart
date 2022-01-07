import 'package:flutter/material.dart';
import 'package:get/get.dart';



class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({
    Key? key, this.rustemText, this.rustemTextTwo, this.goToRustem, this.goToRustemTwo,
  }) : super(key: key);
  final String? rustemText;
  final String? rustemTextTwo;
  final String? goToRustem;
  final String? goToRustemTwo;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      elevation: 6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () => Get.toNamed('/$goToRustem'),
            child:  Text(rustemText!),
          ),
          TextButton(
            onPressed: () => Get.toNamed('/$goToRustemTwo'),
            child:  Text(rustemTextTwo!),
          ),
        ],
      ),
    );
  }
}