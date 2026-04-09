import 'package:bmi/models/b_m_i_model.dart';
import 'package:bmi/widgets/age_or_weight_card.dart';
import 'package:flutter/material.dart';

class AgeAndWeightSection extends StatefulWidget {
  final BMIModel bmiModel;
  const AgeAndWeightSection({super.key, required this.bmiModel});

  @override
  State<AgeAndWeightSection> createState() => _AgeAndWeightSectionState();
}

class _AgeAndWeightSectionState extends State<AgeAndWeightSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 32,
      children: [
        Expanded(
          child: AgeOrWeightCard(
            value: widget.bmiModel.weight,
            title: 'Weight',
            onAdd: () {
              setState(() {
                widget.bmiModel.weight += 1;
              });
            },
            onRemove: () {
              setState(() {
                widget.bmiModel.weight -= 1;
              });
            },
          ),
        ),
        Expanded(
          child: AgeOrWeightCard(
            value: widget.bmiModel.age,
            title: 'Age',
            onAdd: () {
              setState(() {
                widget.bmiModel.age += 1;
              });
            },
            onRemove: () {
              setState(() {
                widget.bmiModel.age -= 1;
              });
            },
          ),
        ),
      ],
    );
  }
}
