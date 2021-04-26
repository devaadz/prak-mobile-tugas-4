// import 'package:flutter/material.dart';

// // class MyHomePage extends StatefulWidget {
// //   @override
// //   MyHomePage createState({Key key, this.title}) => MyHomePage();
// // }


// // ignore: camel_case_types
// class detail extends StatelessWidget {  
//   detail({Key key,this.nama, this.pic, this.diskripsi}) : super(key: key);  
//   final String nama;  
//   final String pic;    
//   final String diskripsi;    
//   @override  
//   Widget build(BuildContext context) {  
//     return Scaffold(  
//      appBar: AppBar(title: Text("Product ditail")),
//      body: ListView(  
//           padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),  
//           children: <Widget>[
//               Container(
//                 margin: EdgeInsets.only(bottom: 20),
//                 child: Row(
//                   children: <Widget>[
//                     Image.asset('assets/image/'+ pic,
//                         height: 100, width: 100),
//                     Container(
//                         margin: EdgeInsets.only(left: 20),
//                         child: Column(
//                           children: [
//                             Container(
//                               margin: EdgeInsets.only(top: 0, bottom: 10),
//                               child: Text(
//                                 nama ,
//                                 style: TextStyle(fontSize: 30),
//                               ),
//                             )],
//                         )),
//                   ],
//                 ),
//               ),
//               new Expanded(
//                   flex: 1,
//                   child: SingleChildScrollView(
//                     scrollDirection: Axis.vertical, //.horizontal
//                     child: Text(
//                       diskripsi,style: TextStyle(
//                         fontSize: 15.0,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ))
//           ])
//     );
//   }
// }
