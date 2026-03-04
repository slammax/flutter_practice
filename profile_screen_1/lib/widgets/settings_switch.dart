// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SettingsSwitch extends StatefulWidget {
  const SettingsSwitch({super.key});

  @override
  State<SettingsSwitch> createState() => _SettingsSwitchState();
}

class _SettingsSwitchState extends State<SettingsSwitch> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      alignment: Alignment.centerRight,
      scale: 0.6,
      child: Switch.adaptive(
        value: isSwitched,
        activeThumbColor: Colors.blue[600],
        onChanged: (bool value) {
          setState(() {
            isSwitched = value;
          });
        },
      ),
    );
  }
}
