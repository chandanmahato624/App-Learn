import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/widgets/appbar/appbar.dart';
import 'package:shopping_app/common/widgets/layout/grid_layout.dart';
import 'package:shopping_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:shopping_app/utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            const TAppBar(title: Text('Popular Products'), showBackArrow: true),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Dropdwn
                  DropdownButtonFormField(
                    decoration:
                        const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
                    onChanged: (value) {},
                    items: ['Nmae', 'Higher pricw', 'Sale', 'Newest']
                        .map((option) => DropdownMenuItem(
                            value: option, child: Text(option)))
                        .toList(),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Products-----------
                  TRridLayout(
                      itemCount: 8,
                      itemBuilder: (_, index) => const TProductCardVertical())
                ],
              )),
        ));
    // 5.55
  }
}
