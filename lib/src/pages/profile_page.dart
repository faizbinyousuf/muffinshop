import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final style = TextStyle(
      fontSize: 35, fontWeight: FontWeight.bold, color: Colors.grey[500]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Profile', style: style),
        ],
      ),
    );
  }
}
