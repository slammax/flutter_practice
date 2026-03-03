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
          child: SettingsSection(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 17, left: 17),
                child: Text(
                  'General',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                    fontWeight: .bold,
                  ),
                ),
              ),
              SettingsTile(
                leading: Icons.person_outline,
                title: 'Edit Profile',
                subtitle: 'Change profile picture, number, E-mail',
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              SettingsTile(
                leading: Icons.lock_outline,
                title: 'Change Password',
                subtitle: 'Update and strengthen account security',
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              SettingsTile(
                leading: Icons.shield_outlined,
                title: 'Terms of Use',
                subtitle: 'Protect your account now',
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              SettingsTile(
                leading: Icons.payment_outlined,
                title: 'Add Card',
                subtitle: 'Securely add payment method',
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: NavbarWidget(),
    );
  }
}
