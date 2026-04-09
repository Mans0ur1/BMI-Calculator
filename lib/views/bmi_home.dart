import 'package:bmi/constants/colors.dart';
import 'package:bmi/models/b_m_i_model.dart';
import 'package:bmi/models/gender.dart';
import 'package:bmi/views/bmi_result.dart';
import 'package:bmi/widgets/age_and_weight_section.dart';
import 'package:bmi/widgets/gender_card.dart';
import 'package:bmi/widgets/height_card.dart';
import 'package:flutter/material.dart';

class BMIHomePage extends StatelessWidget {
  
  final BMIModel bmiModel = BMIModel(
    age: 22,
    gender: Gender.other,
    height: 170,
    weight: 50,
  );
  BMIHomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.primaryText),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                spacing: 32,
                children: [
                  Expanded(child: GenderCard(bmiModel: bmiModel)),
                  Expanded(child: HeightCard(bmiModel: bmiModel)),
                  Expanded(child: AgeAndWeightSection(bmiModel: bmiModel)),
                ],
              ),
            ),
          ),
          CalculateButton(bmiModel: bmiModel),
        ],
      ),
    );
  }
}

class CalculateButton extends StatelessWidget {
  final BMIModel bmiModel;
  const CalculateButton({super.key, required this.bmiModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder:(context)=>BMIResult(bmiModel:bmiModel)));
      },
      child: Container(
        width: double.infinity,
        height: 60,
        color: AppColors.accent,
        child: Center(
          child: Text(
            'CALCULATE',
            style: TextStyle(fontSize: 30, fontWeight: .bold),
          ),
        ),
      ),
    );
  }
}
