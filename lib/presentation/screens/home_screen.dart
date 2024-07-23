import 'package:flutter/material.dart';
import 'package:peticion_hht/presentation/screens/home_view.dart';
import 'package:peticion_hht/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeView(),
      bottomNavigationBar: NavigationBarApp(),
    );
  }
}
