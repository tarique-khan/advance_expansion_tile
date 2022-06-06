import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:advance_expansion_tile/advance_expansion_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  ///it needed to manually collapse, exapnd or toggle Expansion tile
  final GlobalKey<AdvanceExpansionTileState> _globalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            AdvanceExpansionTile(
              key: _globalKey,
              title: const Text("Expansion Tile Title"),
              children: [
                Container(
                  height: 50,
                  color: Colors.green,
                )
              ],
              onTap: () {

              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ///toggle expansion tile
            _globalKey.currentState?.toggle();
          },
          child: const Icon(
              Icons.add
          ),
        ),
      ),
    );
  }
}
