import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/widgets/appbar/appbar.dart';
import 'package:shopping_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:shopping_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:shopping_app/common/widgets/icons/t_circular_icon.dart';
import 'package:shopping_app/common/widgets/images/t_rounded_image.dart';
import 'package:shopping_app/features/personalization/screens/product_details/product_details_image_slider.dart';
import 'package:shopping_app/features/personalization/screens/product_details/product_meta_data.dart';
import 'package:shopping_app/features/personalization/screens/product_details/ratting_share_widget.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/image_strings.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            const TProductImageSlider(),

            /// 2 - Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// ratting and share button
                  TRattingShare(),

                  /// price tag + .......
                  TProductMetaData()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
