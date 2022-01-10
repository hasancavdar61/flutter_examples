import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.labelText,
    this.controller,
    this.inputType,
    this.maxLines,
  }) : super(key: key);

  final String? labelText;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines!,
      keyboardType: inputType!,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(
                width: 6, color: Colors.white, style: BorderStyle.solid),
          ),
          labelText: labelText!),
      controller: controller!,
      validator: (value) => value!.isEmpty ? 'yürü la' : null,
    );
  }
}
