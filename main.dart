import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'services/local_db_service.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const WbpApp());
}

class WbpApp extends StatelessWidget {
  const WbpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LocalDbService()..initDb(),
      child: MaterialApp(
        title: 'WALLPAPER BY PRINCE',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
          primaryColor: const Color(0xFF6A00FF),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
