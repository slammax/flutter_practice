import 'package:flutter/material.dart';
import 'package:profile_screen_1/widgets/navbar_widget.dart';
import 'package:profile_screen_1/widgets/settings_section.dart';
import 'package:profile_screen_1/widgets/settings_tile.dart';

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
          child: Column(
            children: [
              SettingsSection(
                title: 'General',
                children: [
                  SettingsTile(
                    leading: Icons.person_outline,
                    title: 'Edit Profile',
                    subtitle: 'Change profile picture, number, E-mail',
                  ),
                  SettingsTile(
                    leading: Icons.lock_outline,
                    title: 'Change Password',
                    subtitle: 'Update and strengthen account security',
                  ),
                  SettingsTile(
                    leading: Icons.shield_outlined,
                    title: 'Terms of Use',
                    subtitle: 'Protect your account now',
                  ),
                  SettingsTile(
                    leading: Icons.payment_outlined,
                    title: 'Add Card',
                    subtitle: 'Securely add payment method',
                  ),
                ],
              ),

              SizedBox(height: 20),

              SettingsSection(
                title: 'Preference',
                children: [
                  SettingsTile(
                    leading: Icons.notifications_outlined,
                    title: 'Notification',
                    subtitle: 'Customize your notification preferences',
                  ),
                  SettingsTile(
                    leading: Icons.help_outline,
                    title: 'FAQ',
                    subtitle: 'Find answers to common questions',
                  ),
                  SettingsTile(
                    leading: Icons.logout,
                    leadingColor: const Color.fromARGB(255, 209, 20, 70),
                    title: 'Log Out',
                    titleColor: const Color.fromARGB(255, 209, 20, 70),
                    subtitle: 'Securely log out of Account',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: NavbarWidget(),
    );
  }
}
