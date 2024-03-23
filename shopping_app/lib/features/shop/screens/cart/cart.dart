import 'package:flutter/material.dart';
import 'package:shopping_app/common/widgets/appbar/appbar.dart';
import 'package:shopping_app/common/widgets/images/t_rounded_image.dart';
import 'package:shopping_app/common/widgets/texts/product_title_text.dart';
import 'package:shopping_app/common/widgets/texts/t_brand_title_with_verified_icon.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/image_strings.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/helpers/helper_functions.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: ListView.separated(
            itemCount: 4,
            shrinkWrap: true,
            separatorBuilder: (_, __) =>
                const SizedBox(height: TSizes.spaceBtwSections),
            itemBuilder: (_, index) => Column(
              children: [
                Row(
                  children: [
                    TRoundImage(
                      imageUrl: TImages.productImage1,
                      width: 60,
                      height: 60,
                      padding: const EdgeInsets.all(TSizes.sm),
                      backgroundColor: THelperFunctions.isDarkMode(context)
                          ? TColors.darkerGrey
                          : TColors.light,
                    ),
                    const SizedBox(width: TSizes.spaceBtwItems),

                    /// Title price and Size
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TBrandTitleWithVerifiedIcon(title: 'Nike'),
                        const TProductTitleText(
                            title: 'Black Sport shoes', maxLines: 1),

                        /// Atributes ----------9.18
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: 'Color : ',
                              style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(
                              text: 'Green',
                              style: Theme.of(context).textTheme.bodyLarge),
                        ])),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
