import 'package:flutter/material.dart';
class CategoryIconWithIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryIconWithIcon({super.key, 
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 28, color: const Color.fromARGB(255, 0, 0, 0)),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 11),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
