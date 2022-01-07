import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubScreenOne extends StatefulWidget {
  SubScreenOne({
    Key? key,
  }) : super(key: key);

  @override
  State<SubScreenOne> createState() => _SubScreenOneState();
  final myController = TextEditingController();
}

class _SubScreenOneState extends State<SubScreenOne> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: const EdgeInsets.all(25.0),
        alignment: Alignment.center,
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: widget.myController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Lütfen boş bırakmayın';
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                    child: const Text('Submit'),
                    onPressed: () => _formKey.currentState!.validate()
                        ? Get.offAllNamed('/',
                            arguments: widget.myController.text)
                        : const Text('cavdar'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
