import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    final favoriteFood = food.where((item) => item.isFavorite).toList();

    if (favoriteFood.isEmpty) {
      return const Center(
        child: Column(
          children: [
            Image(image: AssetImage('assets/images/pngtree-save.png')),
            SizedBox(height: 16),
            Text('No favorites added yet!', style: TextStyle(fontSize: 16)),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: favoriteFood.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Image(
                  image: NetworkImage(favoriteFood[index].imgUrl),
                  height: 70,
                  width: 90,
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      favoriteFood[index].name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "\$ ${favoriteFood[index].price.toString()}",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {
                    final targetedItem = favoriteFood[index];
                    int targetIndex = food.indexOf(targetedItem);
                    setState(() {
                      food[targetIndex] = food[targetIndex].copyWith(
                        isFavorite: false,
                      );
                      favoriteFood.remove(targetedItem);
                    });
                  },
                  icon: Icon(Icons.favorite, color:Theme.of(context).primaryColor),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
