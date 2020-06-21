import 'package:MuffinShop/src/pages/signin_page.dart';
import 'package:flutter/material.dart';
import '../widgets/order_card.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  // final orderCard = OrderCard();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        scrollDirection: Axis.vertical,
        children: [
          OrderCard(),
          OrderCard(),
          OrderCard(),
          OrderCard(),
        ],
      ),
      bottomNavigationBar: _buildTotal(),
    );
  }

  Widget _buildTotal() {
    return Container(
      height: 240,
      margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Cart Total',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey)),
              Text(
                '\u20b9 600.0',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Discount',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey)),
              Text(
                '\u20b9 100',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tax',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey)),
              Text(
                '\u20b9 50.0',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Divider(color: Colors.grey, height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Subtotal',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey)),
              Text(
                '\u20b9 550',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          GestureDetector(
            onTap: () {
              var route = MaterialPageRoute(
                  builder: (BuildContext context) => SignInPage());
              Navigator.of(context).push(route);
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: Center(
                  child: Text(
                'Proceed to Checkout',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
