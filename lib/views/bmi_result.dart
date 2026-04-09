import 'package:bmi/constants/colors.dart';
import 'package:bmi/models/b_m_i_model.dart';
import 'package:bmi/widgets/b_m_i_sf_radial_gauge.dart';
import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  const BMIResult({super.key, required this.bmiModel});

  final BMIModel bmiModel;

  @override
  Widget build(BuildContext context) {
    final bmi = bmiModel.calculateBMI();

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text(
          'BMI RESULT',
          style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.primaryText),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: .center,
          spacing: 8,
          children: [
            Text(
              'GENDER : ${bmiModel.gender.name}',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text(
              'HEIGHT : ${bmiModel.height.toStringAsFixed(0)}',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text(
              'WEIGHT : ${bmiModel.weight}',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text(
              'AGE : ${bmiModel.age}',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            BMISfRadialGauge(bmi: bmi),
          ],
        ),
      ),
    );
  }
}
