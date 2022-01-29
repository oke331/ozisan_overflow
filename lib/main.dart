import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OzisanPage(),
    );
  }
}

class OzisanPage extends StatefulWidget {
  const OzisanPage({Key? key}) : super(key: key);

  @override
  State<OzisanPage> createState() => _OzisanPageState();
}

class _OzisanPageState extends State<OzisanPage> {
  bool _isSlimMan = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _isSlimMan
              ? Image.asset('assets/fat.PNG')
              : Image.asset('assets/slim.PNG'),
        ],
      ),
    );
  }
}
