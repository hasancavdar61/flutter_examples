import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubScreenOneWidget extends StatefulWidget {
  SubScreenOneWidget({Key? key}) : super(key: key);

  @override
  State<SubScreenOneWidget> createState() => _SubScreenOneWidgetState();
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();
}

class _SubScreenOneWidgetState extends State<SubScreenOneWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(23.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            key: widget._formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      labelText: 'Veri yolla...'),
                  controller: widget.myController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Lütfen boş bırakmayın';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                  child: const Text('Submit'),
                  onPressed: () async {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Veri gönderiliyor...'),
                          // Retrieve the text the that user has entered by using the
                          // TextEditingController.
                          content: Text(widget.myController.text),
                        );
                      },
                    );
                    await Future.delayed(const Duration(seconds: 3));
                    widget._formKey.currentState!.validate()
                        ? Get.offAllNamed('/',
                            arguments: widget.myController.text)
                        : const Text('cavdar');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
