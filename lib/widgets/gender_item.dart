import 'package:bmi/constants/colors.dart';
import 'package:flutter/material.dart';

class GenderItem extends StatelessWidget {
  const GenderItem({
    super.key,
    
    required this.onTap,
    required this.genderName,
    required this.genderIcon,
    required this.color,
  });
  final Color color;
  final IconData genderIcon;
  final String genderName;

  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: Column(
          children: [
            Icon(genderIcon, size: 120, color: Colors.white),
            Text(
              genderName,
              style: TextStyle(fontSize: 20, color: AppColors.secondaryText),
            ),
          ],
        ),
      ),
    );
  }
}
