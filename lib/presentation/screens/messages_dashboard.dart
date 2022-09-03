import 'package:flutter/material.dart';

class MessagesDashboard extends StatefulWidget {
  const MessagesDashboard({Key? key}) : super(key: key);

  @override
  State<MessagesDashboard> createState() => _MessagesDashboardState();
}

class _MessagesDashboardState extends State<MessagesDashboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size.height);
    return Container(
      color: Colors.yellow.shade800,
      height: size.height,
      width: size.width,
    );
  }
}
