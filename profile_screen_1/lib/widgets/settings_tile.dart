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
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ListTile(
        leading: Icon(leading, color: leadingColor ?? Colors.blueAccent),
        title: Text(title, style: TextStyle(fontWeight: .bold)),
        subtitle: subtitle != null
            ? Text(
                subtitle!,
                style: TextStyle(color: subtitleColor ?? Colors.grey),
              )
            : null,
        trailing:
            trailing ??
            const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 25),
      ),
    );
  }
}
