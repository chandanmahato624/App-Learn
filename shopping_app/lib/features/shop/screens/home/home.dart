import 'package:flutter/material.dart';
import 'package:shopping_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:shopping_app/features/shop/screens/home/home_appbar.dart';

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
              children: [THomeAppBar()],
            )),
          ],
        ),
      ),
    );
  }
}
