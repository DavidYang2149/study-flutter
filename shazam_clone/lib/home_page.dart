import 'package:flutter/material.dart';

import 'tab_chart.dart';
import 'tab_library.dart';
import 'tab_listen.dart';
import 'tab_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        body: Stack(
          children: [
            TabBarView(
              children: [
                TabLibrary(),
                TabListen(),
                TabChart(),
              ],
            ),
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: TabPage(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
