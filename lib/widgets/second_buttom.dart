import 'package:flutter/material.dart';

class CustomSecondButtom extends StatelessWidget {
  final double height;
  final double width;
  final VoidCallback onTap;
  final IconData icon;
  const CustomSecondButtom({
    super.key,
    required this.height,
    required this.width,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Icon(icon, color: Theme.of(context).primaryColor),
      ),
    );
    ;
  }
}
