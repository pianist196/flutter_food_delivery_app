import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/constans/colors.dart';
import 'package:flutter_food_delivery_app/models/food.dart';
import 'package:flutter_food_delivery_app/screens/detail/widget/food_detail.dart';
import 'package:flutter_food_delivery_app/screens/detail/widget/food_img.dart';
import 'package:flutter_food_delivery_app/widgets/custom_app_bar.dart';

class DetailPage extends StatelessWidget {
  final Food food;

  const DetailPage({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              leftIcon: Icons.arrow_back_ios_outlined,
              rightIcon: Icons.favorite_outline,
              leftCallback: () => Navigator.of(context).pop(),
            ),
            FoodImg(food: food),
            FoodDetail(food: food)
          ],
        ),
      ),
    );
  }
}
