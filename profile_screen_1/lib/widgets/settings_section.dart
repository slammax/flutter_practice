// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SettingsSection extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const SettingsSection({
    super.key,
    required this.title,
    required this.children,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 17, left: 17, bottom: 10),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 23,
                fontWeight: .bold,
              ),
            ),
          ),
          ...children,
        ],
      ),
    );
  }
}
