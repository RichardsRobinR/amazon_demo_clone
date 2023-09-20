import 'package:amazon_demo_clone/view/components/StarRating.dart';
import 'package:amazon_demo_clone/view/components/custom_Carousel.dart';
import 'package:amazon_demo_clone/view/components/custom_SearchBar.dart';
import 'package:amazon_demo_clone/view/home/ItemList.dart';
import 'package:amazon_demo_clone/view_model/itemListViewModel.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {

  List<String> imageUrls = [
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/250?image=9",
    "https://picsum.photos/250?image=9",
  ];

  @override
  Widget build(BuildContext context) {
    print("hello--");
    ItemListViewModel itemListViewModel = context.watch<ItemListViewModel>();
    // itemListViewModel.getItemList();
    itemListViewModel.getItemList();
    //ItemListViewModel itemListViewModel = context.watch<ItemListViewModel>();
    print("0" + itemListViewModel.itemRecords.length.toString());
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          CustomSearchBar(),
          CarouselDemo(),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Text("Today's Deals",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),

          ItemList(imageUrls: imageUrls,itemListViewModel: itemListViewModel,)
        ],
      ),
    );
  }
}
