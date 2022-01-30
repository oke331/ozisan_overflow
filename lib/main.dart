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
      builder: (context, child) {
        final mediaQueryData = MediaQuery.of(context);
        return MediaQuery(
          data: mediaQueryData.copyWith(textScaleFactor: 1),
          child: child!,
        );
      },
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
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          'おじさんが\n痩せたり太ったりする\nアプリです。',
                          style: Theme.of(context).textTheme.headline5,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          '痩せてるおじさんも、太ってるおじさんも、\n'
                          'どっちもイカしてる。',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 3,
                      child: Image.asset(
                        _isSlimMan ? 'assets/slim.PNG' : 'assets/fat.PNG',
                      ),
                    ),
                    const Spacer(),
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
        child: Text(
          _isSlimMan ? 'リバウンドする' : 'ダイエットする',
        ),
      ),
    );
  }
}
