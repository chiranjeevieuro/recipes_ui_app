import 'package:flutter/material.dart';
import 'package:flutter_vikings/menu/models/food_menu_item.dart';
import 'package:flutter_vikings/menu/views/widgets/menu_list_item_image_bg.dart';
import 'package:flutter_vikings/menu/views/widgets/menu_list_item_image_wrapper.dart';

class MenuListItemImage extends StatelessWidget {
  const MenuListItemImage(
    this.menuItem, {
    Key? key,
  }) : super(key: key);

  final FoodMenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    double imageSize = MediaQuery.of(context).size.width * 0.45;
    return ClipRRect(
      borderRadius: BorderRadius.circular(35),
      child: MenuListItemImageWrapper(
        child: Stack(
          children: [
            MenuListItemImageBg(
              imageSize: imageSize,
              color: menuItem.textColor.withOpacity(0.2),
            ),
            Positioned(
              bottom: -20,
              right: -20,
              child: Image.asset(
                menuItem.image,
                width: imageSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}