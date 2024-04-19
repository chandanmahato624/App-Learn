import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shopping_app/data/repositories/authentication_repo.dart';
import 'package:shopping_app/features/authentication/Networks/network_manager.dart';
import 'package:shopping_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:shopping_app/utils/constants/image_strings.dart';
import 'package:shopping_app/utils/popups/full_screen_loader.dart';
import 'package:shopping_app/utils/popups/loaders.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  /// Variables
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  /// Send Reset password email
  sendPasswordResetEmail() async {
    try {
      // start loading
      TFullScreenLoader.openLoadingDialog(
          'Processing your request....', TImages.lodingIllustration);

      // Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form validation
      if (!forgetPasswordFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Send email to reset password
      await AuthenticationRepository.instance
          .sendPasswordResetEmail(email.text.trim());

      // remove loader
      TFullScreenLoader.stopLoading();

      // show success screen
      Tloaders.successSnackBar(
          title: 'Email send',
          message: 'Email link send to reset your password'.tr);

      // Redirect
      Get.to(() => ResetPassword(email: email.text.trim()));
    } catch (e) {
      // remove loader
      TFullScreenLoader.stopLoading();
      Tloaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }

  ///RE - Send Reset password email
  resendPasswordResetEmail(String email) async {
    try {
      // start loading
      TFullScreenLoader.openLoadingDialog(
          'Processing your request....', TImages.lodingIllustration);

      // Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Send email to reset password
      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      // remove loader
      TFullScreenLoader.stopLoading();

      // show success screen
      Tloaders.successSnackBar(
          title: 'Email send',
          message: 'Email link send to reset your password'.tr);
    } catch (e) {
      // remove loader
      TFullScreenLoader.stopLoading();
      Tloaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}
