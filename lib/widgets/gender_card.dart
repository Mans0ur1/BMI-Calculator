import 'package:bmi/constants/colors.dart';
import 'package:bmi/models/b_m_i_model.dart';
import 'package:bmi/models/gender.dart';
import 'package:bmi/widgets/gender_item.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatefulWidget {
  final BMIModel bmiModel;
  const GenderCard({super.key, required this.bmiModel});
  @override
  State<GenderCard> createState() => _GenderCardState();
}

class _GenderCardState extends State<GenderCard> {
  _GenderCardState();
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 32,
      children: [
        Expanded(
          child: GenderItem(
            onTap: () {
              setState(() {
                widget.bmiModel.gender=Gender.male;
              });
            },
            genderName: 'MALE',
            genderIcon: Icons.male_outlined,
            color:widget.bmiModel.gender==Gender.male? AppColors.card : AppColors.inactiveCard,
          ),
        ),
        Expanded(
          child: GenderItem(
            onTap: () {
              setState(() {
                 widget.bmiModel.gender=  Gender.female ;
              });
            },
            genderName: 'FEMALE',
            genderIcon: Icons.female_outlined,
            color: widget.bmiModel.gender==Gender.female ? AppColors.card : AppColors.inactiveCard,
          ),
        ),
      ],
    );
  }
}
