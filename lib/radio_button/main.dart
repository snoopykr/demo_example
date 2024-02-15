import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum Gender { man, women }

class _MyHomePageState extends State<MyHomePage> {
  Gender _gender = Gender.man;

  final isSelected = <bool>[false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Radio Button Row',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Radio(
                        value: Gender.man,
                        groupValue: _gender,
                        onChanged: (value) {
                          setState(() {
                            _gender = value!;
                          });
                        },
                      ),
                      const Expanded(
                        child: Text('남자'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Radio(
                        value: Gender.women,
                        groupValue: _gender,
                        onChanged: (value) {
                          setState(() {
                            _gender = value!;
                          });
                        },
                      ),
                      const Expanded(
                        child: Text('여자'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // ToggleButtons(
            //   color: Colors.black.withOpacity(0.60),
            //   selectedColor: Color(0xFF6200EE),
            //   selectedBorderColor: Color(0xFF6200EE),
            //   fillColor: Color(0xFF6200EE).withOpacity(0.08),
            //   splashColor: Color(0xFF6200EE).withOpacity(0.12),
            //   hoverColor: Color(0xFF6200EE).withOpacity(0.04),
            //   borderRadius: BorderRadius.circular(4.0),
            //   isSelected: isSelected,
            //   onPressed: (index) {
            //     // Respond to button selection
            //     setState(() {
            //       isSelected[index] = !isSelected[index];
            //     });
            //   },
            //   children: [
            //     Icon(Icons.favorite),
            //     Icon(Icons.visibility),
            //     Icon(Icons.notifications),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
