// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:shopping_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:shopping_app/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:shopping_app/common/widgets/texts/section_heading.dart';
import 'package:shopping_app/features/shop/screens/home/home_appbar.dart';
import 'package:shopping_app/features/shop/screens/home/widget/home_categories.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/image_strings.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/device/device_utility.dart';
import 'package:shopping_app/utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// --- AppBar ---
                  THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// --- SearchBar ---
                  const TSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///Categories sections
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        const TSectionHeading(
                            title: 'Popular categories',
                            showActionButton: false,
                            textColor: Colors.white),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        /// catagories
                        THomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),

            /// Body -- Tutorial
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: TRoundImage(),
            )
          ],
        ),
      ),
    );
  }
}

class TRoundImage extends StatelessWidget {
  const TRoundImage({
    super.key,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onpressed;
  final double borderRedius;

  /// 9.00 -------------- CHECK IT FAST

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRedius)),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRedius)
              : BorderRadius.zero,
          child: const Image(
              image: AssetImage(TImages.promoBanner1), fit: BoxFit.contain),
        ),
      ),
    );
  }
}
