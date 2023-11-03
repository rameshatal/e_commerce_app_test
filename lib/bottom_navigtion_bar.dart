import 'package:e_commerce_app_test/screens/cheakout_screen.dart';
import 'package:e_commerce_app_test/screens/home_screen.dart';
import 'package:e_commerce_app_test/screens/product_details.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  List<Widget> listNavigationDest = [
    HomeScreen(),
    ProductDetails(),
    CheakoutScreen(),
  ];

  int mIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        ),
        body: listNavigationDest[mIndex],
        bottomNavigationBar: NavigationBar(
          selectedIndex: mIndex,
          indicatorColor: Colors.orange.shade200,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          onDestinationSelected: (index) {
            mIndex = index;
            setState(() {

            });
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home",),
            NavigationDestination(icon: Icon(Icons.search_rounded), label: "Search" ,selectedIcon:Icon(Icons.access_time_filled_sharp)),
            NavigationDestination(icon: Icon(Icons.delete), label: "Delete"),
            NavigationDestination(icon: Icon(Icons.favorite_border), label: "Favorite"),
            NavigationDestination(icon: Icon(Icons.account_circle), label: "Account"),
          ],
        ));
  }
}
