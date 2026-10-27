import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/widgets/custom_back_buttom.dart';
import 'package:food_delivery/widgets/favorite_bottom.dart';
import 'package:food_delivery/widgets/food_details/property_item.dart';
import 'package:food_delivery/widgets/food_details/top_banner.dart';

class FoodDetailsPage extends StatelessWidget {
  final FoodItem foodItem;
  const FoodDetailsPage({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBanner(foodItem: foodItem),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodItem.name,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'chesee Burger',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 16),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PropertyItem(
                          propertyName: 'size',
                          propertyValue: 'Larg',
                        ),
                        VerticalDivider(thickness: 4),
                        PropertyItem(
                          propertyName: 'Caloris',
                          propertyValue: '550 Kcal',
                        ),
                        VerticalDivider(thickness: 4),
                        PropertyItem(
                          propertyName: 'Cooking Time',
                          propertyValue: '10-20 Min',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "lorem mloremipsumloremipsumloremipsumloremipsumloremipsumloremimipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumloremipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem lorem ipsum",
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        '${foodItem.price}\$',
                        style: Theme.of(context).textTheme.headlineMedium!
                            .copyWith(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.w800 ,
                            ),
                      ),
                      SizedBox(width: 40),
                      Expanded(
                        child: SizedBox(
                          height: size.height * 0.05,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Check out"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      // appBar: AppBar(
      //   title: Text("Foodek", style: TextStyle(color: Colors.white)),
      // ),
    );
  }
}
