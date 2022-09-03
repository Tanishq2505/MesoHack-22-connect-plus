import 'package:connect_plus/presentation/widgets/appbar_widget.dart';
import 'package:connect_plus/presentation/widgets/profile_widget.dart';
import 'package:connect_plus/utlis/user_preferences.dart';
import 'package:flutter/material.dart';

import '../../model/user.dart';
import '../widgets/TextField_Widget.dart';

class EditProfilePage extends StatefulWidget {
  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          physics: const BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: user.imagePath,
              isEdit: true,
              onClicked: () async {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: "Full Name",
              text: user.name,
              onChanged: (name) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: "Email",
              text: user.email,
              onChanged: (email) {},
            ),
            const SizedBox(height: 30),
            TextFieldWidget(
              label: "About",
              text: user.about,
              maxLines: 5,
              onChanged: (name) {},
            ),
          ],
        ),
      );
}
