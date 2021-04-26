import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recycle_view_card/show/list.dart';
import 'package:recycle_view_card/template/HomePage.dart';
//import 'package:recycle_view_card/template/ListPage.dart';
import 'package:recycle_view_card/template/Profile_Page.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: HomePage(),
          icon: Icon(Icons.home),
          title: Text("Home"),
        ),
        TabNavigationItem(
          page: ListPageData(title: "list page"),
          icon: Icon(Icons.shopping_basket),
          title: Text("List"),
        ),
        TabNavigationItem(
          page: ProfilPage(),
          icon: Icon(Icons.phone_forwarded_rounded),
          title: Text("Call Page"),
        ),
      ];
}