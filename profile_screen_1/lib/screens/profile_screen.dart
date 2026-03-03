import 'package:flutter/material.dart';
import 'package:profile_screen_1/widgets/navbar_widget.dart';
import 'package:profile_screen_1/widgets/settings_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 241, 241, 241),

        title: Text(
          'PROFILE SETTINGS',
          style: TextStyle(fontSize: 20, fontWeight: .bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SettingsSection(children: []),
        ),
      ),

      bottomNavigationBar: NavbarWidget(),
    );
  }
}
