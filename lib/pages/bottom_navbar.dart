import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_delivery/pages/account_page.dart';
import 'package:food_delivery/pages/home_page.dart';
import 'package:food_delivery/pages/favorites_page.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> bodyOptions = [HomePage(), FavoritesPage(), AccountPage()];

    final PreferredSizeWidget? appBar;
    if (Platform.isAndroid) {
      appBar = AppBar(
        title: Text("Foodek", style: TextStyle(color: Colors.white)),
      );
    } else if (Platform.isIOS) {
      appBar = CupertinoNavigationBar();
    } else {
      appBar = null;
    }

    return Scaffold(
      body: bodyOptions[selectedIndex],
      backgroundColor: Colors.grey[100],
      appBar: appBar,
      drawer: Drawer(
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        child: Center(child: Text("i'm in drawer")),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
