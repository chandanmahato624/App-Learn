import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shopping_app/features/authentication/Networks/network_manager.dart';
import 'package:shopping_app/utils/constants/image_strings.dart';
import 'package:shopping_app/utils/popups/full_screen_loader.dart';
import 'package:shopping_app/utils/popups/loaders.dart';

class SingUpController extends GetxController {
  static SingUpController get instance => Get.find();

  /// Variable
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  /// SIGNUP

  /// SIGNUP
  Future<void> singup() async {
    try {
      //Start loading
      TFullScreenLoader.openLoadingDialog(
          'We are processing your information...', TImages.verifyIllustration);
      // check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      // Form validation
      if (!signupFormKey.currentState!.validate()) return;

      // Privacy Policy check
      if (!privacyPolicy.value) {
        Tloaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message:
              'In order to create account, you must have to read and accept the aprivacy Policy & Terms of Use',
        );
        return;
      }
    } catch (e) {
      Tloaders.errorSnackBar(title: 'On Snap!', message: e.toString());
    } finally {
      // Remove loder
      TFullScreenLoader.stopLoading();
    }
  }

  //----------28.32
}
