import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keels/views/home/component/top_products.dart';

import 'component/banner_slider.dart';
import 'component/categories.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Keells",
          style: TextStyle(
            fontFamily: "Poppins-Light",
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          BannerSlider(),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Categories(),
                TopProducts(),
              ],
            ),
          )
          // TopProducts(),
        ],
      ),
    );
  }
}
