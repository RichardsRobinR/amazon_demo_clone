import 'dart:convert';
import 'package:amazon_demo_clone/data/itemListModel.dart';
import 'package:amazon_demo_clone/utils/constants.dart';
import 'package:http/http.dart' as http;

class ItemListServices {

  static Future<List<Record>> getItemList() async {
    try {
      var response = await http.get(Uri.parse(ITEM_LIST_URL),headers: {"X-Master-Key" : "\$2b\$10\$DXjy/zF7RFgCq3M28m.Fv.IKmLR/nJk2mM3EUMVxsLbnXYDjXQSC.",
      "X-Access-Key": "\$2b\$10\$09g5dQfky19EXuSgTuG6ju4ZiK7LmxUeujH0j60yPrv1udSVk6R22"});
      print(response.statusCode.toString());
      print("r" + response.body);

      if (SUCCESS == response.statusCode) {
        // final List<Map<String, dynamic>> jsonData = ;

        ItemListModel items = ItemListModel.fromJson(jsonDecode(response.body));
        print(items.record?[0].description);

        List<Record>  itemrecords = items.record!.map((productJson) {
          return productJson ;
        }).toList();

        return itemrecords;

      }

    } catch (e) {
      print("eg" + e.toString());

    }
    return [];
  }
}
