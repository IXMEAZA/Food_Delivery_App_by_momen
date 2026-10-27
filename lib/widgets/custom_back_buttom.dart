import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/second_buttom.dart';

class CustomBackButtom extends StatelessWidget {
  final double height;
  final double width;

  const CustomBackButtom({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return CustomSecondButtom(
      height: height,
      width: width,
      onTap: ()=>Navigator.of(context).pop(),
      icon:   Icons.chevron_left,
    );
  }
}
