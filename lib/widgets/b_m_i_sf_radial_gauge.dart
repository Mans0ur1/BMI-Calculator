import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class BMISfRadialGauge extends StatelessWidget {
  const BMISfRadialGauge({
    super.key,
    required this.bmi,
  });

  final double bmi;

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      enableLoadingAnimation: true,
      axes: [
        RadialAxis(
          minimum: 10,
          maximum: 40,
          showLabels: true,
          showTicks: true,
          axisLineStyle: const AxisLineStyle(
            thickness: 30,
            thicknessUnit: GaugeSizeUnit.logicalPixel,
          ),
          ranges: [
            GaugeRange(
              startValue: 10,
              endValue: 18.5,
              startWidth: 30,
              endWidth: 30,
              color: Colors.blue,
              label: 'Underweight',
              labelStyle: const GaugeTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            GaugeRange(
              startValue: 18.5,
              endValue: 25,
              startWidth: 30,
              endWidth: 30,
              color: Colors.green,
              label: 'Normal',
              labelStyle: const GaugeTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            GaugeRange(
              startValue: 25,
              endValue: 30,
              startWidth: 30,
              endWidth: 30,
              color: Colors.yellow,
              label: 'Overweight',
              labelStyle: const GaugeTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            GaugeRange(
              startValue: 30,
              endValue: 40,
              startWidth: 30,
              endWidth: 30,
              color: Colors.red,
              label: 'Obese',
              labelStyle: const GaugeTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
          pointers: [NeedlePointer(value: bmi, enableAnimation: true)],
          annotations: [
            GaugeAnnotation(
              widget: Text(
                'BMI Range = ${bmi.toStringAsFixed(1)}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              angle: 90,
              positionFactor: .75,
            ),
          ],
        ),
      ],
    );
  }
}
