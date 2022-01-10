import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/widgets/custom_text_form_field.dart';

class InputUserAndThemeSelect extends StatefulWidget {
  InputUserAndThemeSelect({Key? key}) : super(key: key);

  @override
  State<InputUserAndThemeSelect> createState() =>
      _InputUserAndThemeSelectState();
  final controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
}

class _InputUserAndThemeSelectState extends State<InputUserAndThemeSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Form(
              key: widget._formKey,
              child: CustomTextFormField(
                labelText: 'Enter Name',
                controller: widget.controller,
                inputType: TextInputType.name,
                maxLines: 1,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              widget._formKey.currentState!.validate()
                  ? Get.offAllNamed('/HomePage',
                      arguments: widget.controller.text)
                  : const Text('cavdar');
            },
            child: const Text("Let's Go"),
          ),
        ],
      ),
    );
  }
}
