import 'package:MuffinShop/src/scoped-model/main_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'screens/main_screen.dart';

class MyApp extends StatelessWidget {
  final MainModel mainModel = MainModel();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
      model: mainModel,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Muffin eShop",
        theme: ThemeData(
          primaryColor: Colors.blueAccent,
        ),
        home: MainScreen(model: mainModel),
      ),
    );
  }
}
