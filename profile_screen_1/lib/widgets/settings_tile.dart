import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final String title;
  final IconData leading;
  final String? subtitle;
  final Widget? trailing;

  const SettingsTile({
    super.key,
    required this.title,
    required this.leading,
    this.subtitle,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile();
  }
}
