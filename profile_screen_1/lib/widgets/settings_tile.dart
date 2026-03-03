import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final IconData leading;
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final Color? subtitleColor;
  final Color? leadingColor;

  const SettingsTile({
    super.key,
    required this.title,
    required this.leading,
    this.subtitle,
    this.trailing,
    this.subtitleColor,
    this.leadingColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leading, color: leadingColor ?? Colors.blueAccent),
      title: Text(title),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              style: TextStyle(color: subtitleColor ?? Colors.grey),
            )
          : null,
      trailing: trailing,
    );
  }
}
