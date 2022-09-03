import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  final icon = CupertinoIcons.moon_circle;
  return AppBar(
    leading: BackButton(),
    backgroundColor: Colors.grey,
    elevation: 0,
    actions: [
      IconButton(
        icon: Icon(icon),
        onPressed: () {},
      ),
    ],
  );
}
