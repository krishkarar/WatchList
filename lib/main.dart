import 'package:flutter/material.dart';
import 'screens/shows_screen.dart';
import 'package:provider/provider.dart';
import 'models/show_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => show_data(),
      child: MaterialApp(
        home: ShowsScreen(),
      ),
    );
  }
}
