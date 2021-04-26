
import 'package:flutter/material.dart';
import 'package:recycle_view_card/template/ProductDetail.dart';
import 'package:share/share.dart';

class ProductBox extends StatelessWidget {  
  ProductBox({Key key, this.name, this.image, this.deskripsi, this.link}) : super(key: key);  
  final String name;  
  final String image;  
  final String deskripsi;  
  final String link;  
  
  Widget build(BuildContext context) {  
    return Container(  
        // padding: EdgeInsets.all(2),  
        // height: 90,  
        child: Card(  
          shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
            child: Row(
                children:[  
                  Image.asset('assets/images/'+image ,height: 65, width: 65),  
                  Expanded(  
                      child: Container(  
                          padding: EdgeInsets.all(5),  
                          child: Column(  
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
                            children: <Widget>[  
                              Text(  
                                  this.name, style: TextStyle(  
                                  fontWeight: FontWeight.bold  
                              )  
                              ),  
                              // ignore: deprecated_member_use
                              RaisedButton(
                              color: Colors.indigo,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ProductDetail(nama: this.name,pic: this.image,diskripsi: this.deskripsi)));
                              },
                              child: Text(
                                "preview",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                              // ignore: deprecated_member_use
                              RaisedButton(
                              color: Colors.indigo,
                              onPressed: () {
                                Share.share(link);
                              },
                              child: Text(
                                "share",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                              // ganti dengan tombol
                              // Text(this.description), Text(  
                              //     "Price: " + this.price.toString()  
                              //),  
                            ],  
                          )  
                      )  
                  )  
                ]  
            )  
        )  
    );  
  }  
} 