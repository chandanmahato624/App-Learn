import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/styles/shadows.dart';
import 'package:shopping_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:shopping_app/common/widgets/icons/t_circular_icon.dart';
import 'package:shopping_app/common/widgets/images/t_rounded_image.dart';
import 'package:shopping_app/common/widgets/texts/product_title_text.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/image_strings.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/helpers/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkGrey : TColors.white,
      ),
      child: Column(
        children: [
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                const TRoundImage(
                    imageUrl: TImages.productImage2, applyImageRadius: true),

                /// seal Tag ----
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text('25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black)),
                  ),
                ),

                /// Favourite icon----------
                const Positioned(
                    top: 0,
                    right: 0,
                    child:
                        TCircularIcon(icon: Iconsax.heart5, color: Colors.red)),
              ],
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwItems / 2),

          /// -- Details
          const Padding(
            padding: EdgeInsets.only(left: TSizes.sm),
            child: Column(
              children: [
                TProductTitleText(
                    title: 'Green Nike Air Shoes', smallSize: true),
              ],
            ),
          )
        ],
      ),
    );
  }
}
