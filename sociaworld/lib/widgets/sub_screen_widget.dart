import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubScreenOneWidget extends StatefulWidget {
  SubScreenOneWidget(
      {Key? key,
      this.labelText,
      this.returnText,
      this.buttonLabel,
      this.dialogText})
      : super(key: key);

  final String? labelText;
  final String? returnText;
  final String? buttonLabel;
  final String? dialogText;

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
                      labelText: widget.labelText),
                  controller: widget.myController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return widget.returnText;
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                  child: Text(widget.buttonLabel!),
                  onPressed: () async {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            scrollable: true,
                            title: Text(widget.dialogText!),
                            // Retrieve the text the that user has entered by using the
                            // TextEditingController.
                            content: const Text('Your data has been sent..'));
                      },
                    );
                    await Future.delayed(const Duration(seconds: 2));

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
