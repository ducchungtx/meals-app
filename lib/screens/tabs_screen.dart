import 'package:flutter/material.dart';
import './favorites_screen.dart';
import './categories_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
                title: const Text('Meals'),
                bottom: const TabBar(tabs: [
                  Tab(
                    text: 'Categories',
                    icon: Icon(Icons.category),
                  ),
                  Tab(text: 'Favorites', icon: Icon(Icons.star))
                ])),
            body: const TabBarView(children: [
              CategoriesScreen(),
              FavoritesScreen(),
            ])));
  }
}
