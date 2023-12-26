import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:shopping_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:shopping_app/features/shop/screens/home/home_appbar.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/device/device_utility.dart';
import 'package:shopping_app/utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                /// --- AppBar ---
                THomeAppBar(),
                SizedBox(height: TSizes.spaceBtwSections),

                /// --- SearchBar ---
                TSearchContainer(text: 'Search in Store'),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
