import 'package:flutter/material.dart';
import 'package:peticion_hht/presentation/screens/screens.dart';

class NavigationBarApp extends StatefulWidget {
  const NavigationBarApp({super.key});

  @override
  State<NavigationBarApp> createState() => _NavigationBarAppState();
}

class _NavigationBarAppState extends State<NavigationBarApp> {
  int selectIdex = 0;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final screens = [
      const HomeView(),
      const SearchCharacter(),
      const ConfigScrenn()
    ];

    return Scaffold(
      body: IndexedStack(
        index: selectIdex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: selectIdex,
        selectedItemColor: colors.primary,
        //showSelectedLabels: false,
        //showUnselectedLabels: false,
        //unselectedItemColor: colors.primary,
        onTap: (value) {
          setState(() {
            selectIdex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_max_outlined),
            label: 'Home',
            //backgroundColor: colors.primary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            //backgroundColor: colors.secondary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
            //backgroundColor: colors.secondary,
          ),
        ],
      ),
    );
  }
}
