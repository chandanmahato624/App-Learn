import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constants/colors.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: const TextStyle(color: true ? TColors.white : null),
    );
  }
}
