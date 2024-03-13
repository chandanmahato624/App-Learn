import 'package:flutter/material.dart';
import 'package:shopping_app/common/widgets/appbar/appbar.dart';
import 'package:shopping_app/common/widgets/images/t_circular_image.dart';
import 'package:shopping_app/common/widgets/texts/section_heading.dart';
import 'package:shopping_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:shopping_app/utils/constants/image_strings.dart';
import 'package:shopping_app/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showBackArrow: true, title: Text('Profile')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                        image: TImages.user, width: 80, height: 80),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change profile picture')),
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Heading Profile info
              const TSectionHeading(
                  title: 'Profile information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(
                  title: 'Name', value: 'Chandan mahato', onPressed: () {}),
              TProfileMenu(
                  title: 'Username', value: 'chandan_mahato', onPressed: () {}),

              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Heading personal info
              const TSectionHeading(
                  title: 'Personal information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),
              TProfileMenu(
                  title: 'Name', value: 'Chandan mahato', onPressed: () {}),
              TProfileMenu(
                  title: 'Username', value: 'chandan_mahato', onPressed: () {}),
              TProfileMenu(
                  title: 'Name', value: 'Chandan mahato', onPressed: () {}),
              TProfileMenu(
                  title: 'Username', value: 'chandan_mahato', onPressed: () {}),
              TProfileMenu(
                  title: 'Name', value: 'Chandan mahato', onPressed: () {}),
              TProfileMenu(
                  title: 'Username', value: 'chandan_mahato', onPressed: () {}),

              /// close account
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'close Account',
                      style: TextStyle(color: Colors.red),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
