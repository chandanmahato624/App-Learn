import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shopping_app/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:shopping_app/features/shop/screens/sub_category/sub_category.dart';
import 'package:shopping_app/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (_, index) {
            return TVerticalImageText(
              image: TImages.shoeIcon,
              title: 'Shoes',
              onTap: () => Get.to(() => const SubcategoriesScreen()),
            );
          }),
    );
  }
}
