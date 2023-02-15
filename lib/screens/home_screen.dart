import 'package:consumoapi/dtos/providers/usersprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider= context.read<UserProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: Column(
        children: const [
          Text('Hola'),
          
        ],
      ),
      
    );
  }
}