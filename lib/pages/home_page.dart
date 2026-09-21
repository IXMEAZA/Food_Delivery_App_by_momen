import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/widgets/food_grid_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double heights = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/classic_burger.jpg',
                fit: BoxFit.cover,
                height: heights * 0.23,
              ),
            ),
            SizedBox(height: heights * 0.03),
            GridView.builder(physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: food.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: heights * 0.02,
                mainAxisSpacing: heights * 0.02,
              ),
              itemBuilder: (context, index) =>
                  FoodGridItem(foodIndex: index),
            ),
          ],
        ),
      ),
    );
  }
}
