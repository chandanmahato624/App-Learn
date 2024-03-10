import 'package:flutter/material.dart';
import 'package:shopping_app/common/widgets/brands/brand_show_case.dart';
import 'package:shopping_app/common/widgets/layout/grid_layout.dart';
import 'package:shopping_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:shopping_app/common/widgets/texts/section_heading.dart';
import 'package:shopping_app/utils/constants/image_strings.dart';
import 'package:shopping_app/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Brands------
              const TBrandShowcase(
                images: [
                  TImages.productImage1,
                  TImages.productImage3,
                  TImages.productImage2
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// products
              TSectionHeading(title: 'You might like.', onPressed: () {}),
              const SizedBox(height: TSizes.spaceBtwItems),
              TRridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const TProductCardVertical()),
              const SizedBox(height: TSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
