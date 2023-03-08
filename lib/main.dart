import 'package:flutter/material.dart';
import 'package:meals/screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ThemeData theme = ThemeData(
    fontFamily: 'Raleway',
    canvasColor: const Color.fromRGBO(255, 254, 229, 1),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme
              .copyWith(primary: Colors.pink, secondary: Colors.amber),
          textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                  fontSize: 20, fontFamily: 'RobotoCondensed'))),
      home: const CategoriesScreen(),
    );
  }
}
