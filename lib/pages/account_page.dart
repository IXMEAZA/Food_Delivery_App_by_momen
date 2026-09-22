import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  Widget orderVoucherItem({
    required int numOFItems,
    required String orderName,
  }) {
    return Column(
      children: [
        Text(
          numOFItems.toString(),

          style: TextStyle(
            color: const Color.fromARGB(255, 187, 106, 81),
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

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
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
              orderVoucherItem(orderName: 'Orders', numOFItems: 100),
              orderVoucherItem(orderName: 'Vouchers', numOFItems: 100),
            ],
          ),
          Divider(thickness: 2, indent: 20, endIndent: 20),
          itemTappedTile(
            icon: Icons.shopping_cart,
            title: 'Past Orders',
            sub: 'Here is your past orders',
          ),
          Divider(thickness: 2, indent: 20, endIndent: 20),
          itemTappedTile(
            icon: Icons.card_giftcard,
            title: 'Available Vouchers',
          ),
          Divider(thickness: 2, indent: 20, endIndent: 20),
        ],
      ),
    );
  }

  ListTile itemTappedTile({
    required String title,
    required IconData icon,
    String? sub,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.deepOrange, size: 40),
      subtitle: sub != null ? Text(sub) : null,
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios_outlined),
    );
  }
}
