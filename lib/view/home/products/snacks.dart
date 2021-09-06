import 'package:flutter/material.dart';
import 'package:lego_market_app/core/components/home_page/product_list.dart';
import 'package:lego_market_app/core/constant/scaffold/products_scaffold.dart';
import 'package:lego_market_app/models/foods.dart';
import 'package:lego_market_app/utils/dbhelper.dart';

class SnacksList extends StatefulWidget {
  SnacksList({Key key}) : super(key: key);

  @override
  _SnacksListState createState() => _SnacksListState();
}

class _SnacksListState extends State<SnacksList> {
  DatabaseHelper databaseHelper;
  List<Products> allFoodList;
  int id = 1;
  void initState() {
    super.initState();
    // ignore: deprecated_member_use
    allFoodList = List<Products>();
    databaseHelper = DatabaseHelper();
    databaseHelper.foodsFetch("Snacks").then((allFoodMapList) {
      for (Map readMap in allFoodMapList) {
        allFoodList.add(Products.fromMap(readMap));
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return BuildProductsScaffold(
      "SNACKS",
      ListView(
        children: foodItemCreat(),
      ),
    );
  }

// ignore: missing_return
  List<Column> foodItemCreat() {
    return allFoodList
        .map(
          (product) => BuildProductList(
            context,
            product.name,
            product.explanation,
            product.price,
          ),
        )
        .toList();
  }
}
