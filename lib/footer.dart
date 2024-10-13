import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade800, // Fundalul footer-ului
      padding: const EdgeInsets.all(16.0), // Padding pentru conținut
      child: const Center(
        child: Text(
          '© 2024 Magic Feet Sibiu',
          style: TextStyle(
            color: Colors.white, // Culoarea textului
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
