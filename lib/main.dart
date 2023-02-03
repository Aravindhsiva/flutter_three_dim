import 'package:flutter/material.dart';
import 'package:flutter_three_dim/info_card.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter 3D Render"),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            ModelViewer(src: "assets/3d/model_sm.glb"),
            const Positioned(
              bottom: 0,
              child: InfoCard(),
            ),
          ],
        ),
      ),
    );
  }
}
