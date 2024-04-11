import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/widgets/appbar/appbar.dart';
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
                    items: [],
                    onChanged: (value) {},
                  ),
                ],
              )),
        ));
    // 5.55
  }
}
