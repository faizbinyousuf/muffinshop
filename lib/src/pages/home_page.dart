import 'package:MuffinShop/src/scoped-model/food_model.dart';
import 'package:MuffinShop/src/scoped-model/main_model.dart';
import 'package:MuffinShop/src/widgets/food_category.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../widgets/home_top_info.dart';
import '../widgets/food_category.dart';
import '../widgets/search_field.dart';
import '../widgets/bought_foods.dart';

import '../models/food_model.dart';

class HomePage extends StatefulWidget {
  // final FoodModel foodModel;

  // HomePage(this.foodModel);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //List<Food> _foods = foods;
  final textStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0);
  @override
  void initState() {
    //widget.foodModel.fetchFoods();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: [
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(height: 16.0),
          SearchField(),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Frequently Bought Items',
                style: textStyle,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          ScopedModelDescendant<MainModel>(
              builder: (BuildContext context, Widget child, MainModel model) {
            return Column(
              children: model.foods.map(_buildFoodItems).toList(),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildFoodItems(Food food) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: FrequentFood(
        id: food.id,
        name: food.name,
        imagepath: food.imagepath,
        category: food.category,
        discount: food.discount,
        price: food.price,
        rating: food.rating,
      ),
    );
  }
}
