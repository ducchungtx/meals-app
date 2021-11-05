import 'package:flutter/material.dart';

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
                title: const Text('Tabs'),
                bottom: TabBar(tabs: [
                  Tab(text: 'Tab 1'),
                ])),
            body: TabBarView(children: [
              Center(child: Text('Tab 1')),
              Center(child: Text('Tab 2')),
            ])));
  }
}
