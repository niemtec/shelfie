import 'package:flutter/material.dart';

class BottomMenuBar extends StatefulWidget {
  int selectedPageIndex = 0;
  BottomMenuBar({super.key, required this.selectedPageIndex});

  @override
  State<BottomMenuBar> createState() => _BottomMenuBarState();
}

class _BottomMenuBarState extends State<BottomMenuBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: widget.selectedPageIndex,
      onDestinationSelected: (int index) {
        setState(() {
          widget.selectedPageIndex = index;
        });
      },
      destinations: const <NavigationDestination>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: "Home",
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.movie),
          icon: Icon(Icons.movie_outlined),
          label: "Movies",
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.smart_display),
          icon: Icon(Icons.smart_display_outlined),
          label: "TV",
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.book),
          icon: Icon(Icons.book_outlined),
          label: "Books",
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.explore),
          icon: Icon(Icons.explore_outlined),
          label: "Websites",
        ),
      ],
    );
  }
}
