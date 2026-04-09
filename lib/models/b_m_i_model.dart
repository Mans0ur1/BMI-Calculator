import 'package:bmi/models/gender.dart';

class BMIModel {
  Gender gender;
  double height;
  int age;
  int weight;
  BMIModel({
    required this.gender,
    required this.height,
    required this.age,
    required this.weight,
  });

  double calculateBMI() {
  return weight / ((height / 100) * (height / 100));
  }
}
