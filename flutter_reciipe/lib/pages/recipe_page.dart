import 'package:flutter/material.dart';
import 'package:flutter_reciipe/components/recipe_list_item.dart';
import 'package:flutter_reciipe/components/recipe_menu.dart';
import 'package:flutter_reciipe/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildRecipeAppBar(),
      body: Column(
        children: [
          RecipeTitle(),
          RecipeMenu(),
          RecipeListItem("Coffee", "Made Coffee"),
          RecipeListItem("Bugger", "Made Bugger"),
          RecipeListItem("Pizza", "Made Pizza"),
        ],
      ),
    );
  }

  AppBar buildRecipeAppBar() => AppBar();
}
