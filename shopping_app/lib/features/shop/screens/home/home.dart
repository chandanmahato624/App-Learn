// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:shopping_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:shopping_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:shopping_app/common/widgets/layout/grid_layout.dart';
import 'package:shopping_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:shopping_app/common/widgets/texts/section_heading.dart';
import 'package:shopping_app/features/shop/screens/home/home_appbar.dart';
import 'package:shopping_app/features/shop/screens/home/widget/home_categories.dart';
import 'package:shopping_app/features/shop/screens/home/widget/promo_slider.dart';
import 'package:shopping_app/utils/constants/image_strings.dart';
import 'package:shopping_app/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
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
                        TSectionHeading(
                            title: 'Popular categories',
                            showActionButton: false,
                            textColor: Colors.white),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        /// catagories
                        THomeCategories()
                      ],
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body -- Tutorial
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImages.banner1,
                      TImages.banner2,
                      TImages.banner3
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  TSectionHeading(
                    title: 'Popular Products',
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// Populer products ---
                  TRridLayout(
                      itemCount: 2,
                      itemBuilder: (_, index) => const TProductCardVertical()),

                  /// Popular product ---
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
