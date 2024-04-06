import 'package:flutter/material.dart';
import 'package:shopping_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:shopping_app/common/widgets/products/product_cards/product_price_text.dart';
import 'package:shopping_app/features/shop/screens/cart/cart_item.dart';
import 'package:shopping_app/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 3,
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: TSizes.spaceBtwSections),
      itemBuilder: (_, index) => Column(
        children: [
          const TCartItem(),
          if (showAddRemoveButtons)
            const SizedBox(height: TSizes.spaceBtwItems),
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),
                    TProductQuantityWithAddRemoveButton()
                  ],
                ),
                TProdutPriceText(price: '624')
              ],
            )
        ],
      ),
    );
  }
}
