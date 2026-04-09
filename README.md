# BMI Calculator

A Flutter application for calculating Body Mass Index (BMI) through a clean, interactive interface. Users can select gender, adjust height, age, and weight, then view the final BMI on a dedicated results screen with a radial gauge for quick visual feedback.

## Features

- Gender selection with clear active states
- Interactive height slider
- Reusable counter controls for age and weight
- BMI calculation based on height and weight inputs
- Separate results screen for a focused summary
- Radial gauge that highlights BMI ranges visually

## BMI Formula

```text
BMI = weight (kg) / (height in meters)^2
```

## Tech Stack

- Flutter
- Dart
- `syncfusion_flutter_gauges`

## Project Structure

```text
lib/
|- constans/
|  |- colors.dart
|- models/
|  |- b_m_i_model.dart
|  |- gender.dart
|- views/
|  |- bmi_home.dart
|  |- bmi_result.dart
|- wigdets/
|  |- age_and_weight_section.dart
|  |- age_or_weight_card.dart
|  |- b_m_i_sf_radial_gauge.dart
|  |- counter_action_button.dart
|  |- custom_slider.dart
|  |- gender_card.dart
|  |- gender_item.dart
|  |- height_card.dart
```

## Getting Started

1. Install Flutter.
2. Get the project dependencies:

```bash
flutter pub get
```

3. Run the app:

```bash
flutter run
```

## Notes

- State is managed from the home screen and passed down to reusable widgets.
- The result screen combines raw BMI details with a visual gauge to make the outcome easier to understand.
