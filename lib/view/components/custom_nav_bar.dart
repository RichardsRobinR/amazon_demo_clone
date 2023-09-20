import 'package:amazon_demo_clone/view/appBar/custom_appbar.dart';
import 'package:amazon_demo_clone/view/components/custom_icons_icons.dart';
import 'package:amazon_demo_clone/view/detailsPage/DetailsScreen.dart';
import 'package:amazon_demo_clone/view/home/home_screen.dart';
import 'package:amazon_demo_clone/view/cartPage/CartScreen.dart';
import 'package:amazon_demo_clone/view_model/itemListViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int currentPageIndex = 1;
  @override
  Widget build(BuildContext context) {
    // ItemListViewModel itemListViewModel = context.watch<ItemListViewModel>();


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Explore',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(CustomIcons.category_icon),
            label: 'Commute',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'Saved',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(CustomIcons.profile_icon),
            label: 'Saved',
          ),
        ],
      ),
      body: <Widget>[
        HomeScreen(),
        Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: const Text('Page 1'),
        ),
        Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child: const Text('Page 1'),
        ),

        // DetailsScreen(),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 4'),
        ),
      ][currentPageIndex],
    );
  }
}
