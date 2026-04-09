import 'package:bmi/constants/colors.dart';
import 'package:bmi/models/b_m_i_model.dart';
import 'package:bmi/widgets/custom_slider.dart';
import 'package:flutter/material.dart';

class HeightCard extends StatefulWidget {
  final BMIModel bmiModel;
  const HeightCard({super.key, required this.bmiModel,});

  @override
  State<HeightCard> createState() => _HeightCardState();
}

class _HeightCardState extends State<HeightCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: .infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.card,
      ),
      child: Column(
        children: [
          Text(
            'HEIGHT',
            style: TextStyle(fontSize: 20, color: AppColors.secondaryText),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.bmiModel.height.toStringAsFixed(0),
                style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
              ),
              Text(
                'cm',
                style: TextStyle(fontSize: 20, color: AppColors.secondaryText),
              ),
            ],
          ),
          CustomSlider(
            height: widget.bmiModel.height,
            onChanged: (value) {
              setState(() {
                widget.bmiModel.height = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
