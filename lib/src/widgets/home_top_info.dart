import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget {
  final welcomeText = TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What would',
                style: welcomeText,
              ),
              Text(
                'you like to eat ?',
                style: welcomeText,
              ),
            ],
          ),
          Icon(
            Icons.notifications_none,
            color: Theme.of(context).primaryColor,
            size: 30.0,
          ),
        ],
      ),
    );
  }
}
