import 'package:flutter/material.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [const Color(0xFF6A00FF).withOpacity(0.2), Colors.black]),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(
        child: Text('God & Goddess\nSpecial Collection', textAlign: TextAlign.center, style: TextStyle(fontSize:20, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
