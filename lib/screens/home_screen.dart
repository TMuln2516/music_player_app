import 'package:flutter/material.dart';
import 'package:music_player_app/components/my_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "PLAYLIST",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
