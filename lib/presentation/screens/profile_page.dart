import 'package:connect_plus/model/user.dart';
import 'package:connect_plus/presentation/screens/Editing_Profile_page.dart';
import 'package:connect_plus/presentation/widgets/appbar_widget.dart';
import 'package:connect_plus/utlis/user_preferences.dart';
import 'package:flutter/material.dart';

import '../widgets/Numbers_Widget.dart';
import '../widgets/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EditProfilePage()));
            },
          ),
          const SizedBox(height: 24),
          buildName(user),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 15),
          NumbersWidget(),
          SizedBox(height: 40),
          buildAbout(user),
        ],
      );
  Widget buildAbout(User user) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 36),
            Text(
              user.about,
              style: TextStyle(fontSize: 16, height: 1.4),
            )
          ],
        ),
      );
}
