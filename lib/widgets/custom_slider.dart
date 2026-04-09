import 'package:bmi/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  final double height;
  final void Function(double)? onChanged;
  const CustomSlider({
    super.key,
    required this.onChanged,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(
        context,
      ).copyWith(thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16)),
      child: Slider(
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
        thumbColor: AppColors.accent,
        value: height,
        min: 120,
        max: 300,
        divisions: 180,
        onChanged: onChanged,
      ),
    );
  }
}
