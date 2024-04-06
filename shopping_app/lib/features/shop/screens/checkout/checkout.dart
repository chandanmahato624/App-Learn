import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shopping_app/common/widgets/appbar/appbar.dart';
import 'package:shopping_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:shopping_app/common/widgets/products/cart/coupon_widget.dart';
import 'package:shopping_app/common/widgets/success_screen.dart';
import 'package:shopping_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:shopping_app/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:shopping_app/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:shopping_app/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:shopping_app/navigation_menu.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/image_strings.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Order Review',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Items in cart
              const TCartItems(showAddRemoveButtons: false),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// coupon section
              const TCouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// --- Billing Section
              TRoundedContainer(
                padding: const EdgeInsets.all(TSizes.md),
                showBorder: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    /// Pricing
                    TBillingPaymentSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    /// Divider
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    /// - Payment method
                    TBillingAddressSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    /// - Billing Address
                    TBillingAmountSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                  image: TImages.successfulPaymentIcon,
                  title: 'Payment Sucess',
                  subtitle: 'Your item will bw shipted soon',
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                )),
            child: const Text('Checkout \$624.0')),
      ),
    );
  }
}
