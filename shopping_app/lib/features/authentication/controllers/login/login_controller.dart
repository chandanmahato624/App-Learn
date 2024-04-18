import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shopping_app/data/repositories/authentication_repo.dart';
import 'package:shopping_app/features/authentication/Networks/network_manager.dart';
import 'package:shopping_app/utils/constants/image_strings.dart';
import 'package:shopping_app/utils/popups/full_screen_loader.dart';
import 'package:shopping_app/utils/popups/loaders.dart';

class LoginController extends GetxController {
  // Variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    email.text = localStorage.read('REMEMBAER_ME_EMAIL') ?? '';
    password.text = localStorage.read('REMEMBAER_ME_PASSWORD') ?? '';
    super.onInit();
  }

  /// ------Email And Password Sign-In ---------
  Future<void> emailAndPasswordSignIn() async {
    try {
      // Strat Loading
      TFullScreenLoader.openLoadingDialog(
          'Loging You in', TImages.lodingIllustration);

      // check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Remove loder
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form validation
      if (!loginFormKey.currentState!.validate()) {
        // Remove loder
        TFullScreenLoader.stopLoading();
        return;
      }

      // Save dtata if remember me is selected
      if (rememberMe.value) {
        localStorage.write('REMEMBAER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBAER_ME_PASSWORD', password.text.trim());
      }

      // login  user Email and password authentication
      final userCredential = await AuthenticationRepository.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      // Remove loder
      TFullScreenLoader.stopLoading();

      // Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      // remove loader
      TFullScreenLoader.stopLoading();
      Tloaders.errorSnackBar(title: 'On Snap!', message: e.toString());
    }
  }

  /// Google signin authentication
  Future<void> googleSignIn() async {
    try {
      // Start loading
      TFullScreenLoader.openLoadingDialog(
          "Loging yoy in", TImages.lodingIllustration);
      // check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Remove loder
        TFullScreenLoader.stopLoading();
        return;
      }

      // Google authentication
      final userCredentials =
          await AuthenticationRepository.instance.signInWithGoogle();
    } catch (e) {
      Tloaders.errorSnackBar(title: 'On Snap!', message: e.toString());
    }
  }
}
