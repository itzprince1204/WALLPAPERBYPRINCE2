import 'package:flutter/material.dart';
import '../widgets/hero_banner.dart';
import '../widgets/category_strip.dart';
import 'category_detail.dart';
import '../services/api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool loading = true;
  List trending = [];

  @override
  void initState() {
    super.initState();
    loadTrending();
  }

  loadTrending() async {
    trending = await ApiService().getCurated(20);
    setState(() { loading = false; });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WALLPAPER BY PRINCE'),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: loading ? const Center(child: CircularProgressIndicator()) : SingleChildScrollView(
        child: Column(
          children: [
            const HeroBanner(),
            const SizedBox(height: 8),
            const CategoryStrip(),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:16.0),
              child: Align(alignment: Alignment.centerLeft, child: Text('Trending', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold))),
            ),
            const SizedBox(height: 8),
            SizedBox(height:200, child: Center(child: Text('Trending slider placeholder'))),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
