import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/widgets/second_buttom.dart';

class FavoriteBottom extends StatefulWidget {
  final foodIndex;
  final double height;
  final double width;
  const FavoriteBottom({
    super.key,
    required this.foodIndex,
    required this.height,
    required this.width,
  });

  @override
  State<FavoriteBottom> createState() => _FavoriteBottomState();
}

class _FavoriteBottomState extends State<FavoriteBottom> {
  @override
  Widget build(BuildContext context) {
    return CustomSecondButtom(
      height: widget.height,
      width: widget.width,
      onTap: () => setState(() {
        food[widget.foodIndex] = food[widget.foodIndex].copyWith(
          isFavorite: !food[widget.foodIndex].isFavorite,
        );
      }),
      icon: food[widget.foodIndex].isFavorite
          ? Icons.favorite
          : Icons.favorite_border,
    );
  }
}
    
    // Container(
    //   height:widget.height,
    //   width: widget.width,
    //   decoration: BoxDecoration(
    //     color: Colors.grey[100],
    //     borderRadius: BorderRadius.circular(8.0),
    //   ),
    //   child: GestureDetector(
    //     onTap: () => setState(() {
    //       food[widget.foodIndex] = food[widget.foodIndex]
    //       .copyWith(isFavorite: !food[widget.foodIndex].isFavorite,
    //       );
    //     }),
    //     child: Icon(
    //       color: Theme.of(context).primaryColor,
    //     ),
    //   ),
    // );
//   }
// }
