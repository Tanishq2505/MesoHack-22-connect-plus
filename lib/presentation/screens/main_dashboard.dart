import 'package:connect_plus/presentation/screens/messages_dashboard.dart';
import 'package:connect_plus/presentation/screens/posts_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({Key? key}) : super(key: key);

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  int _selectedIndex = 0;
  List<Widget> _child = [
    PostsDashboard(),
    MessagesDashboard(),
    Container(
      color: Colors.purple,
    )
  ];
  onTabChange(int? index) {
    if (index != null) {
      _selectedIndex = index;
      print(_selectedIndex);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _child[_selectedIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: GNav(
          onTabChange: onTabChange,
          haptic: true,
          gap: 16, // the tab button gap between icon and text
          color: Colors.grey[800], // selected icon and text color
          iconSize: 24,
          selectedIndex: 0,
          tabs: [
            GButton(
              backgroundColor: Colors.red.withOpacity(0.2),
              textColor: Colors.red.withOpacity(0.8),
              icon: FontAwesomeIcons.house,
              iconActiveColor: Colors.red.withOpacity(0.8),
              text: "Posts",
            ),
            GButton(
              text: "Messages",
              icon: FontAwesomeIcons.solidMessage,
              backgroundColor: Colors.yellow.shade600.withOpacity(0.2),
              textColor: Colors.yellow.shade800.withOpacity(0.8),
              iconActiveColor: Colors.yellow.shade800.withOpacity(0.8),
            ),
            GButton(
              text: "Profile",
              icon: FontAwesomeIcons.solidUser,
              backgroundColor: Colors.purple.withOpacity(0.2),
              textColor: Colors.purple.withOpacity(0.8),
              iconActiveColor: Colors.purple.withOpacity(0.8),
            )
          ],
        ),
      ),
    );
  }
}
