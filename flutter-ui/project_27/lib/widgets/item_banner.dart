import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBanner extends StatelessWidget {
  final String image;
  const ItemBanner({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(fit: BoxFit.fill, image: AssetImage(image)),
      ),
    );
  }
}
