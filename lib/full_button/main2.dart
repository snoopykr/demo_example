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
            MaterialButton(
              minWidth: double.infinity,
              height: 60,
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () {},
              child: const Text('Material Button'),
            ),
          ],
        ),
      ),
    );
  }
}
