import 'package:flutter/material.dart';

class SuggestionItem extends StatelessWidget {
  final String imagePath;
  final String label;

  const SuggestionItem({super.key, 
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      
      margin: const EdgeInsets.all(9.0),
      decoration: BoxDecoration(
        color: Colors.white, // White background for the entire card
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white, // White background for the text
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
            child: Text(
              label,
              style: const TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
