import 'dart:convert';

import 'package:scoped_model/scoped_model.dart';
import '../models/food_model.dart';
import 'package:http/http.dart' as http;

class FoodModel extends Model {
  String url =
      'http://192.168.137.1:8080/flutter_food_app/api/foods/getFoods.php';
  List<Food> _foods = [];

  List<Food> get foods {
    return List.from(_foods);
  }

  void addFood(Food food) {
    _foods.add(food);
  }

//void
  void fetchFoods() {
//no await
    http.get(url).then((http.Response response) {
      print(response.body);
      final List fetchedData = json.decode(response.body);
      final List<Food> fetchedFoodItems = [];
      fetchedData.forEach((data) {
        Food food = Food(
          id: data['id'],
          category: data['category_id'],
          discount: double.parse(data['discount']),
          imagepath: data['image_path'],
          name: data['title'],
          price: double.parse(data['price']),
        );
        fetchedFoodItems.add(food);
      });
      _foods = fetchedFoodItems;
    });
  }
}
