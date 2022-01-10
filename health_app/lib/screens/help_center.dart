import 'package:flutter/material.dart';
import 'package:health_app/widgets/custom_text_form_field.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpCenter extends StatefulWidget {
  HelpCenter({Key? key, this.labelText, this.returnText}) : super(key: key);

  final String? labelText;
  final String? returnText;

  @override
  _HelpCenterState createState() => _HelpCenterState();
  final _formKey = GlobalKey<FormState>();
  final controllerMail = TextEditingController();
  final controllerSubject = TextEditingController();
  final controllerMessage = TextEditingController();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: (Form(
        key: widget._formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextFormField(
                maxLines: 1,
                labelText: 'Name',
                controller: widget.controllerMail,
                inputType: TextInputType.name,
              ),
              const SizedBox(
                height: 15.0,
              ),
              CustomTextFormField(
                maxLines: 1,
                labelText: 'E-mail',
                controller: widget.controllerSubject,
                inputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 15.0,
              ),
              CustomTextFormField(
                maxLines: 8,
                labelText: 'Message',
                controller: widget.controllerMessage,
                inputType: TextInputType.multiline,
              ),
              const SizedBox(
                height: 15.0,
              ),
              FloatingActionButton.extended(
                onPressed: () {
                  setState(() {
                    sendEmail(
                        email: widget.controllerMail.text,
                        subject: widget.controllerSubject.text,
                        message: widget.controllerMessage.text);
                  });
                },
                label: const Text('Send E-Mail'),
              ),
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.cancel))
            ],
          ),
        ),
      )),
    );
  }
}

Future sendEmail({
  required String email,
  required String subject,
  required String message,
}) async {
  final url =
      'mailto:$email?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}';

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    debugPrint('object');
  }
}
