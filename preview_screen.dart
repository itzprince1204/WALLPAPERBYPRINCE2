import 'package:flutter/material.dart';

class PreviewScreen extends StatelessWidget {
  final Map item;
  final bool isLive;
  const PreviewScreen({super.key, required this.item, this.isLive=false});

  @override
  Widget build(BuildContext context) {
    final img = item['url'] ?? item['src'] ?? '';
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: img!='' ? Image.network(img, fit: BoxFit.cover) : Container(color: Colors.black)),
          Positioned(bottom:40,left:20,right:20,child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){}, child: const Text('Set')),
              ElevatedButton(onPressed: (){}, child: const Text('Download')),
              ElevatedButton(onPressed: (){}, child: const Text('Share')),
            ],
          )),
        ],
      ),
    );
  }
}
