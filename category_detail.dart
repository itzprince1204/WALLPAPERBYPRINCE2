import 'package:flutter/material.dart';

class CategoryDetail extends StatelessWidget {
  final String title;
  final List items;
  const CategoryDetail({super.key, required this.title, this.items = const []});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2, childAspectRatio:0.62, crossAxisSpacing:8, mainAxisSpacing:8),
        itemCount: items.length,
        itemBuilder: (c,i){
          final it = items[i];
          final img = it['thumb'] ?? it['url'] ?? '';
          return GestureDetector(
            onTap: (){},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12),
                image: img != '' ? DecorationImage(image: NetworkImage(img), fit: BoxFit.cover) : null,
              ),
            ),
          );
        },
      ),
    );
  }
}
