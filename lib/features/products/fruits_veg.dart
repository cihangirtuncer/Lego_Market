import 'package:flutter/material.dart';
import 'package:lego_market_app/core/widget/list_map/product_list_map.dart';
import 'package:lego_market_app/features/model/products.dart';
import 'package:lego_market_app/features/view/home/home_page/product_list.dart';
import 'package:lego_market_app/utils/dbhelper.dart';
import '../../../../core/components/scaffold/products_scaffold.dart';

class FruitsVegList extends StatefulWidget {
  FruitsVegList({Key key}) : super(key: key);

  @override
  _FruitsVegListState createState() => _FruitsVegListState();
}

class _FruitsVegListState extends State<FruitsVegList> {
  DatabaseHelper databaseHelper;
  List<Products> allFoodList;
  int id = 1;
  void initState() {
    super.initState();
    // ignore: deprecated_member_use
    allFoodList = List<Products>();
    databaseHelper = DatabaseHelper();
    databaseHelper.productTable("Fruitsveg").then((allFoodMapList) {
      for (Map readMap in allFoodMapList) {
        allFoodList.add(Products.fromMap(readMap));
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return BuildProductsScaffold(
      "FRUIT & VEG",
      ListView(
        children: foodItemCreat(context, allFoodList),
      ),
    );
  }
}
