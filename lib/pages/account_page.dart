import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  Widget orderVoucherItem({
    required int numOFItems,
    required String orderName,
    required Color color,
  }) {
    return Column(
      children: [
        Text(
          numOFItems.toString(),

          style: TextStyle(
            color: color,
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          orderName,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  ListTile itemTappedTile({
    required String title,
    required IconData icon,
    required Color color,
    String? sub,
  }) {
    return ListTile(
      leading: Icon(icon, color: color, size: 40),
      subtitle: sub != null ? Text(sub) : null,
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios_outlined),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 8),
          Container(
            height: 250,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,

                image: AssetImage('assets/images/momenoe.jpg'),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            "Abdalmomen Essa",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              orderVoucherItem(
                orderName: 'Orders',
                numOFItems: 100,
                color: Theme.of(context).primaryColor,
              ),
              orderVoucherItem(
                orderName: 'Vouchers',
                numOFItems: 100,
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
          Divider(thickness: 2, indent: 20, endIndent: 20),
          itemTappedTile(
            color: Theme.of(context).primaryColor,
            icon: Icons.shopping_cart,
            title: 'Past Orders',
            sub: 'Here is your past orders',
          ),
          Divider(thickness: 2, indent: 20, endIndent: 20),
          itemTappedTile(
            color: Theme.of(context).primaryColor,
            icon: Icons.card_giftcard,
            title: 'Available Vouchers',
          ),
          Divider(thickness: 2, indent: 20, endIndent: 20),
        ],
      ),
    );
  }
}
