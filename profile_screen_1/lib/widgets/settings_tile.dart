import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final IconData leading;
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final Color? titleColor;
  final Color? subtitleColor;
  final Color? leadingColor;
  final Color? iconBacgroundColor;

  const SettingsTile({
    super.key,
    required this.title,
    required this.leading,
    this.subtitle,
    this.trailing,
    this.subtitleColor,
    this.leadingColor,
    this.titleColor,
    this.iconBacgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 33,
        width: 33,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: iconBacgroundColor ?? const Color.fromARGB(30, 93, 204, 255),
        ),
        child: Icon(leading, color: leadingColor ?? Colors.blueAccent),
      ),
      title: Text(
        title,
        style: TextStyle(color: titleColor ?? Colors.black, fontWeight: .bold),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              style: TextStyle(color: subtitleColor ?? Colors.grey),
            )
          : null,
      trailing:
          trailing ??
          const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 17),
    );
  }
}
