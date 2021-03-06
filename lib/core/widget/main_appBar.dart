import 'package:flutter/material.dart';

AppBar mainAppBar(Widget? child, bool tF, {List<Widget>? actions}) {
  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: tF,
    title: child,
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Color(0xFFB60707),
            Color(0xFFE49E07),
          ],
        ),
      ),
    ),
    actions: actions,
  );
}
