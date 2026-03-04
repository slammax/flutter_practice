import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String titleName;
  final String subtitleEmail;

  const ProfileHeader({
    super.key,
    required this.titleName,
    required this.subtitleEmail,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 5),
        leading: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/profile_photo.jpg'),
        ),
        title: Text(titleName, style: TextStyle(fontWeight: .bold)),
        subtitle: Text(subtitleEmail),
      ),
    );
  }
}
