import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shelfie/horizontal_scroll_gallery.dart';
import 'package:shelfie/navigation_elements/bottom_menu_bar.dart';
import 'package:shelfie/navigation_elements/top_app_bar.dart';
import 'package:shelfie/typography/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shelfie',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.light),
        ),
      ),
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Shelfie'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar(),
      bottomNavigationBar: BottomMenuBar(
        selectedPageIndex: _selectedPageIndex,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Header(text: "Your Watchlist"),
                ],
              ),
              HorizontalScrollGallery(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Increment',
        child: const Icon(Icons.bookmark_outline),
      ),
    );
  }
}
