import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/common/styles/spacing_styles.dart';
import 'package:shopping_app/features/authentication/screens/login/login.dart';
import 'package:shopping_app/utils/constants/image_strings.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/constants/text_strings.dart';
import 'package:shopping_app/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});

  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBerHeight * 2,
          child: Column(children: [
            Image(
              image: AssetImage(image),
              width: THelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            ///Title and subtitle
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: TSizes.spaceBtwSections),

            ///Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const LoginScreen()),
                child: const Text(TTexts.tContinue),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
