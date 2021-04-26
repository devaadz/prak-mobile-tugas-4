import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

void main() {
  runApp(Scaffold(
    body: Center(
      // ignore: deprecated_member_use
      child: RaisedButton(
        onPressed: _callNumber,
        child: Text('Call Number'),
      ),
    ),
  ));
}

_callNumber() async{
  const number = '08592119XXXX'; //set the number here
  // ignore: unused_local_variable
  bool res = await FlutterPhoneDirectCaller.callNumber(number);
}
