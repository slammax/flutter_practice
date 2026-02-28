import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'PROFILE SETTINGS',
          style: TextStyle(fontSize: 20, fontWeight: .bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(20), child: Column()),
      ),

      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.transparent,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.person_outline, size: 40),
            label: 'Account',
          ),
          NavigationDestination(
            icon: Icon(Icons.search, size: 40),
            label: 'Jobs',
          ),
          NavigationDestination(
            icon: Icon(Icons.attach_money, size: 40),
            label: 'Balance',
          ),
        ],
      ),
    );
  }
}
