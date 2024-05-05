import 'package:flutter/material.dart';
import 'package:theme_provider/home/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        centerTitle: true,
        title: Text(
          "Theme Provider",
          style: TextStyle(
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
      ),
      drawer: const DrawerWidget(),
    );
  }
}
