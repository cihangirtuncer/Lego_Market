import 'package:flutter/material.dart';

import '../../../core/widget/payment_product_counter.dart';
import '../../../utils/dbhelper.dart';
import '../../model/products.dart';

// ignore: non_constant_identifier_names
BuildPayment(BuildContext context, int price, String name, String explanation) {
  // ignore: unused_local_variable
  DatabaseHelper? databaseHelper;
  return Scaffold(
    backgroundColor: Colors.grey.shade200,
    appBar: AppBar(
      title: Padding(
        padding: const EdgeInsets.fromLTRB(
          70,
          0,
          0,
          0,
        ),
        child: Text(
          "PAYMENT",
        ),
      ),
      backgroundColor: Colors.green.shade900,
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            width: 110,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(
                8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        explanation,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    price.toString() + " €",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: ButtonPayment(),
          ),
        ),
        Align(
          child: ElevatedButton(
            onPressed: () {
              databaseHelper!.addOrders(Products(
                name,
                explanation,
                price,
              ));
            },
            child: Text(
              'Add to Basket',
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.green.shade700,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
