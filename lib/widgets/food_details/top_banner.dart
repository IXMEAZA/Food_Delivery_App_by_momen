import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/widgets/custom_back_buttom.dart';
import 'package:food_delivery/widgets/favorite_bottom.dart';

class TopBanner extends StatelessWidget {
  final FoodItem foodItem;
  const TopBanner({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.grey[100]),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: SizedBox(
            height: size.height * 0.4,
            width: size.width,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomBackButtom(
                      height: size.height * 0.04,
                      width: size.width * 0.08,
                    ),
                    FavoriteBottom(
                      foodIndex: 1,
                      height: size.height * 0.04,
                      width: size.width * 0.08,
                    ),
                  ],
                ),
                Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: Image.network(
                    foodItem.imgUrl,
                    fit: BoxFit.contain,
                    height: size.height * 0.3,
                    width: size.width,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
