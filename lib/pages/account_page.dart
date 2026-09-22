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
            color: Colors.deepOrange,
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
        ],
      ),
    );
  }
}
