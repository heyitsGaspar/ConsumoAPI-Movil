import 'package:consumoapi/dtos/providers/usersprovider.dart';
import 'package:consumoapi/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserProvider()..fetchUsers(),
      child: const MaterialApp(
        title: 'Material App',
        home: HomeScreen(),
      ),
      
    );
    
  }
}