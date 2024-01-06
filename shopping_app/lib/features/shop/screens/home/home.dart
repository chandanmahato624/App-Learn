import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:shopping_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:shopping_app/common/widgets/texts/section_heading.dart';
import 'package:shopping_app/features/shop/screens/home/home_appbar.dart';
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
                  const THomeAppBar(),
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
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        /// catagories
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 6,
                              itemBuilder: (_, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      right: TSizes.spaceBtwItems),
                                  child: Column(
                                    children: [
                                      /// circular icon
                                      Container(
                                        width: 56,
                                        height: 56,
                                        padding:
                                            const EdgeInsets.all(TSizes.sm),
                                        decoration: BoxDecoration(
                                          color: TColors.white,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: const Center(
                                          child: Image(
                                            image: AssetImage(TImages.shoeIcon),
                                            fit: BoxFit.cover,
                                            color: TColors.dark,
                                          ),
                                        ),
                                      ),

                                      /// Text
                                      const SizedBox(
                                          height: TSizes.spaceBtwItems / 2),
                                      SizedBox(
                                          width: 55,
                                          child: Text('Shoes categories',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium!
                                                  .apply(color: TColors.white),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis))
                                    ],
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
