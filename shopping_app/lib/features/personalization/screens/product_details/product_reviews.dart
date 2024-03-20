import 'package:flutter/material.dart';
import 'package:shopping_app/common/widgets/appbar/appbar.dart';
import 'package:shopping_app/features/personalization/screens/product_details/widget/progress_indicator_and_rating.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/device/device_utility.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// ---App bar
      appBar: const TAppBar(
        title: Text(
          'Reviews & Rattings',
        ),
        showBackArrow: true,
      ),

      ///--- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratting and reviews are verified and are from pepole who use the same type of the device that you use.'),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Overall Product Rattings
              TOverallProductRatting()
            ],
          ),
        ),
      ),
    );
  }
}

class TOverallProductRatting extends StatelessWidget {
  const TOverallProductRatting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child:
                Text('4.8', style: Theme.of(context).textTheme.displayLarge)),
        const Expanded(
            flex: 7,
            child: Column(
              children: [
                TRatingProgressIndicator(
                  text: '5',
                  value: 1.0,
                ),
                TRatingProgressIndicator(
                  text: '4',
                  value: 0.8,
                ),
                TRatingProgressIndicator(
                  text: '3',
                  value: 0.6,
                ),
                TRatingProgressIndicator(
                  text: '2',
                  value: 0.4,
                ),
                TRatingProgressIndicator(
                  text: '1',
                  value: 0.2,
                ),
              ],
            ))
      ],
    );
  }
}
