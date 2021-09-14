import 'package:flutter/material.dart';
import 'package:lego_market_app/core/widget/list_map/product_map_list.dart';
import 'package:lego_market_app/features/model/products.dart';
import 'package:lego_market_app/utils/dbhelper.dart';
import '../../../../core/components/scaffold/products_scaffold.dart';

class DrinksList extends StatefulWidget {
  @override
  _DrinksListState createState() => _DrinksListState();
}

class _DrinksListState extends State<DrinksList> {
  DatabaseHelper databaseHelper;
  List<Products> allFoodList;
  int id = 1;
  void initState() {
    super.initState();
    // ignore: deprecated_member_use
    allFoodList = List<Products>();
    databaseHelper = DatabaseHelper();
    databaseHelper.productTable("Drinks").then((allFoodMapList) {
      for (Map readMap in allFoodMapList) {
        allFoodList.add(Products.fromMap(readMap));
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return BuildProductsScaffold(
      "DRINKS",
      ListView(
        children: foodItemCreat(context, allFoodList),
      ),
    );
  }
}