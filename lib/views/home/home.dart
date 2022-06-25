import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keels/views/cart/cart.dart';
import 'package:keels/views/favorite/favorite.dart';
import 'package:keels/views/home/dashboard.dart';
import 'package:keels/views/profile/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentIndex = 0;

  final _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>()
  ];

  List<Widget> _buildScreens() {
    return [
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WillPopScope(
          onWillPop: onWillPop,
          child: Dashboard(),
        ),
      ),
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WillPopScope(
          onWillPop: onWillPop,
          child: Favorite(),
        ),
      ),
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WillPopScope(
          onWillPop: onWillPop,
          child: Cart(),
        ),
      ),
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WillPopScope(
          onWillPop: onWillPop,
          child: Profile(),
        ),
      ),
    ];
  }

  Future<bool> onWillPop () {
    if (currentIndex != 0) {
      setState(() {
        currentIndex = 0;
      });
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 90,
                child: Navigator(
                  key: _navigatorKeys[currentIndex],
                  onGenerateRoute: (routeSettings) {
                    return MaterialPageRoute(builder: (context) => _buildScreens()[currentIndex],
                    );
                  },
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          log(index.toString());
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: (currentIndex == 0) ? Colors.green : Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: (currentIndex == 1) ? Colors.green : Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_shopping_cart,
              color: (currentIndex == 2) ? Colors.green : Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.supervisor_account,
                color: (currentIndex == 3) ? Colors.green : Colors.black,
              ),
              label: 'Home',
              backgroundColor: Colors.green),
        ],
      ),
    );
  }
}
