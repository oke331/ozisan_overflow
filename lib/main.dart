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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      'おじさんが\n痩せたり太ったりする\nアプリです。',
                      style: Theme.of(context).textTheme.headline5,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 35),
                    const Text(
                      '痩せてるおじさんも、太ってるおじさんも、\n'
                      'どっちもイカしてる。',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 120),
                    Image.asset(
                      _isSlimMan ? 'assets/slim.PNG' : 'assets/fat.PNG',
                      height: 200,
                      fit: BoxFit.fitHeight,
                    ),
                  ],
                ),
              ),
              _buttonSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buttonSection() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => setState(() => _isSlimMan = !_isSlimMan),
        child: Text(_isSlimMan ? 'リバウンドする' : 'ダイエットする'),
      ),
    );
  }
}
