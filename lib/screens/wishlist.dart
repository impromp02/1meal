import 'package:flutter/material.dart';
import 'package:one_meal/widgets/top_bar.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(),
      backgroundColor: Colors.white,
      body: ListView(children: [ListTile()]),
    );
  }
}
