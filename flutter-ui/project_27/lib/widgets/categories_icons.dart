import 'package:flutter/material.dart';

class CategoriesIcons extends StatelessWidget {
  final String iconImage;
  final Color iconBackgrounColor;
  final String categoryName;
  const CategoriesIcons({
    super.key,
    required this.iconImage,
    required this.iconBackgrounColor,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        spacing: 5,
        children: [
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: iconBackgrounColor,
              shape: BoxShape.circle,
            ),
            child: Image.asset(iconImage, color: Colors.white, height: 50),
          ),
          Text(
            categoryName,
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
