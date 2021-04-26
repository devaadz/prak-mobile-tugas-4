import 'package:flutter/material.dart';
//import 'package:recycle_view_card/show/list.dart';

//import 'bottombar.dart';
import 'template/TabsPage.dart';  
  
// void main() => runApp(MyApp());  
  
// class MyApp extends StatelessWidget {  
//   // It is the root widget of your application.  
//   @override  
//   Widget build(BuildContext context) {  
//     return MaterialApp(  
//       title: 'Flutter Demo Application', theme: ThemeData(  
//       primarySwatch: Colors.green,),  
//       home: MyHomePage(title: 'E-Commers list'),  
//     );  
//   }  
// }  
// import 'package:flutter/material.dart';  

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TabsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}