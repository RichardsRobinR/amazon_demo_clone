import 'dart:ui';

import 'package:amazon_demo_clone/view/appBar/custom_appbar.dart';
import 'package:amazon_demo_clone/view/home/body.dart';
import 'package:amazon_demo_clone/view_model/itemListViewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {


    return HomeBody();

    // return Scaffold(
    //   backgroundColor: Colors.white,
    //   appBar: CustomAppBar(),
    //   body: HomeBody(),
    // );
  }
}
