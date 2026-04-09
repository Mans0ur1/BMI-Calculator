import 'package:flutter/material.dart';

class CounterActionButton extends StatelessWidget {
  const CounterActionButton({
    super.key,
    required this.onTap,
    required this.icon,
  });

  final void Function() onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 25,
        backgroundColor: const Color(0xFF3E4452),
        child: Icon(icon, color: Colors.white, size: 32),
      ),
    );
  }
}
