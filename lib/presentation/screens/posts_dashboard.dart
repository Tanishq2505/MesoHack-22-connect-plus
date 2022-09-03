import 'package:flutter/material.dart';

class PostsDashboard extends StatefulWidget {
  const PostsDashboard({Key? key}) : super(key: key);

  @override
  State<PostsDashboard> createState() => _PostsDashboardState();
}

class _PostsDashboardState extends State<PostsDashboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.red,
    );
  }
}
