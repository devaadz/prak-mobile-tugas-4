import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class ProfilPage extends StatelessWidget {
  TextEditingController textEditingController = TextEditingController();
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => ProfilPage(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Call Page"),
      ),
      body: Center(
                child: Column(
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
                    color: Colors.indigo,
                    child: Text("launch Phone Contact"),
                    onPressed: () {
                      _launchPhoneURL(textEditingController.text);
                    },
                  ),
                  // ignore: deprecated_member_use
                  RaisedButton(
                    color: Colors.indigo,
                    child: Text("Call Number"),
                    onPressed: () {
                      _callNumber(textEditingController.text);
                    },
                    )
                  ],
        ),
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
