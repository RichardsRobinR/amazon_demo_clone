
import 'package:amazon_demo_clone/data/itemListModel.dart';
import 'package:amazon_demo_clone/respository/itemListServices.dart';
import 'package:flutter/material.dart';


class ItemListViewModel extends ChangeNotifier {
  //
  bool _loading = false;
  List<Record> _itemRecords = [];

  List<int> _cartItemIndexList = [];

  bool get loading => _loading;
  List<Record> get itemRecords => _itemRecords;

  List<int> get cartItemIndexList => _cartItemIndexList;

  // ItemListViewModel() {
  //   getItemList();
  // }

  setItemIndexList(int index) {
    _cartItemIndexList.add(index);
  }


  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  setItemListModel(List<Record> itemRecords) {
    _itemRecords = itemRecords;
  }

  getItemList() async {
    _itemRecords = await ItemListServices.getItemList() ;
    setLoading(true);
  }
}
