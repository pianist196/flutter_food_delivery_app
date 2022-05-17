import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/constans/colors.dart';
import 'package:flutter_food_delivery_app/widgets/restaurant_info.dart';
import '../../widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(
              leftIcon: Icons.arrow_back_ios_outlined,
              rightIcon: Icons.search_outlined),
          RestaurantInfo()
        ],
      ),
    );
  }
}
