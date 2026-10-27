import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/widgets/favorite_bottom.dart';

class FoodGridItem extends StatelessWidget {
  final int foodIndex;
  FoodGridItem({super.key, required this.foodIndex});

  bool isfav = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image.network(
                      food[foodIndex].imgUrl,
                      height: constraints.maxHeight * 0.6,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: FavoriteBottom(foodIndex: foodIndex,height: constraints.maxHeight*0.2,width: constraints.maxWidth*0.2,),
                    ),
                  ],
                ),

                SizedBox(height: constraints.maxHeight * 0.02),
                Text(
                  food[foodIndex].name,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700),
                ),
                SizedBox(height: constraints.maxHeight * 0.02),
                Text(
                  "\$ ${food[foodIndex].price.toString()}",
                  style: Theme.of(context).textTheme.titleLarge!
                      .copyWith(fontWeight: FontWeight.w600)
                      .copyWith(color: Theme.of(context).primaryColor),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
