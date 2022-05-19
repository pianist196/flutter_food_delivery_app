import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/constans/colors.dart';
import 'package:flutter_food_delivery_app/models/food.dart';

import 'food_quantity.dart';

class FoodDetail extends StatelessWidget {
  final Food food;

  const FoodDetail({Key? key, required this.food}) : super(key: key);

  Widget _buildContext(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 20,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      color: kBackground,
      child: Column(
        children: [
          Text(
            food.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildContext(
                Icons.access_time_outlined,
                Colors.blue,
                food.waitTime,
              ),
              _buildContext(
                Icons.star_outline,
                Colors.amber,
                food.score.toString(),
              ),
              _buildContext(
                Icons.local_fire_department,
                Colors.red,
                food.cal,
              ),
            ],
          ),
          SizedBox(height: 30),
          FoodQuantity(food: food),
          SizedBox(height: 30),
          Row(
            children: [
              Text(
                "Ingredients",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      food.ingredients[index].values.first,
                      width: 52,
                    ),
                    Text(food.ingredients[index].keys.first)
                  ],
                ),
              ),
              separatorBuilder: (_, index) => SizedBox(width: 15),
              itemCount: food.ingredients.length,
            ),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Text(
                "About",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 60,
            child: Text(
              food.about,
              style: TextStyle(
                wordSpacing: 1.2,
                height: 1.5,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
