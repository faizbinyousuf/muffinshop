import 'package:MuffinShop/src/models/food_model.dart';
import 'package:flutter/material.dart';
import '../data/food_data.dart';

class OrderCard extends StatelessWidget {
  final foods = Food();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/black.jpg'),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                    offset: Offset(0.0, 5.0),
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            SizedBox(width: 20.0),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Black Forest',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  // SizedBox(height: 7.0),
                  Text('600.00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      )),
                ],
              ),
            ),
            SizedBox(width: 30.0),
            Container(
              margin: EdgeInsets.only(top: 18.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2.0, color: Colors.grey)),
              height: 35,
              width: 85,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.remove_circle,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    '0',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.add_circle,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: InkWell(
                onTap: () {
                  print('Clicked');
                },
                child: Icon(
                  Icons.remove_circle_outline,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
