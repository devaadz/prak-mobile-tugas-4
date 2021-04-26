import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(  
            padding: EdgeInsets.all(15),  
              child: TextFormField(
              keyboardType: TextInputType.phone,
              controller: textEditingController,
              decoration: const InputDecoration(
              icon: const Icon(Icons.phone_in_talk),
              hintText: 'Enter Number ',
              labelText: 'Number',
              ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter valid Number';
                  }
                  return null;
                },
              onSaved: (phoneNumber) {
                textEditingController.text = phoneNumber;
              },
            ),
          ),
          // ignore: deprecated_member_use
          RaisedButton(
            child: Text("launch Phone URL"),
            onPressed: () {
              _launchPhoneURL(textEditingController.text);
            },
          ),
          // ignore: deprecated_member_use
          RaisedButton(
            child: Text("Call Number"),
            onPressed: () {
              _callNumber(textEditingController.text);
            },
          )
        ],
      ),
    );
  }
}

_callNumber(String phoneNumber) async {
  String number = phoneNumber;
  await FlutterPhoneDirectCaller.callNumber(number);
}

_launchPhoneURL(String phoneNumber) async {
  String url = 'tel:' + phoneNumber;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
