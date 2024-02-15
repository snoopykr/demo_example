// kindacode.com
// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'KindaCode.com',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const KindaCodeDemo(),
    );
  }
}

class KindaCodeDemo extends StatelessWidget {
  const KindaCodeDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('KindaCode.com')),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: Column(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // The width will be 100% of the parent widget
                    // The height will be 60
                    minimumSize: const Size.fromHeight(60)),
                onPressed: () {},
                child: const Text('Elevated Button')),
            const SizedBox(height: 20),
            OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    // the height is 50, the width is full
                    minimumSize: const Size.fromHeight(50)),
                onPressed: () {},
                icon: const Icon(Icons.run_circle),
                label: const Text('Outlined Button')),
          ],
        ),
      ),
    );
  }
}
