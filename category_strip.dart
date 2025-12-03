import 'package:flutter/material.dart';
class CategoryStrip extends StatelessWidget {
  const CategoryStrip({super.key});
  final List<String> categories = const ['God','Goddess','Anime','Romantic','Games','Premium','Cars','Nature'];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal:12),
        scrollDirection: Axis.horizontal,
        itemBuilder: (c,i){
          final name = categories[i];
          return Column(
            children: [
              Container(
                width:72, height:72,
                decoration: BoxDecoration(
                  color: const Color(0xFF0E0E0E),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFF6A00FF).withOpacity(0.6), width: 2)
                ),
                child: const Icon(Icons.image, color: Colors.white),
              ),
              const SizedBox(height:6),
              Text(name, style: const TextStyle(fontSize:12))
            ],
          );
        },
        separatorBuilder: (_,__)=>const SizedBox(width:12),
        itemCount: categories.length
      ),
    );
  }
}
