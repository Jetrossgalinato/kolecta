import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Kolecta Logo using title.png image
        Image.asset('assets/title.png', height: 100, fit: BoxFit.contain),
        const SizedBox(height: 0),

        // Tagline
        Text(
          'Book It, Bag It, We Got It',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
