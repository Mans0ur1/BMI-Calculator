import 'package:bmi/widgets/counter_action_button.dart';
import 'package:flutter/material.dart';

class AgeOrWeightCard extends StatelessWidget {
  final int value;
  final String title;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  const AgeOrWeightCard({
    super.key,
    required this.value,
    required this.title,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xff17172F),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.grey, fontSize: 20),
          ),
          Text(
            value.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 60,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CounterActionButton(onTap: onAdd, icon: Icons.add),
              const SizedBox(width: 16),
              CounterActionButton(onTap: onRemove, icon: Icons.remove),
            ],
          ),
        ],
      ),
    );
  }
}
