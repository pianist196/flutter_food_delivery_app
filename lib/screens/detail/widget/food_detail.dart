import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/constans/colors.dart';
import 'package:flutter_food_delivery_app/models/food.dart';

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
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
          ),
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
          )
        ],
      ),
    );
  }
}
