import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _situacao = 'Pode entrar!';
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if(_counter < 10) {
        _counter++;
      } else {
        _situacao = 'Lotado!';
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0 && _counter <= 10) {
        _situacao = 'Pode entrar!';
        _counter--;
      } 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Text(
                _situacao,
                style: const TextStyle(fontSize: 20)
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: _incrementCounter,
                  child: const Text('Entrou'),
                ),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: _decrementCounter,
                  child: const Text('Saiu'),
              ),
            ],)
           
          ],
        ),
      ),
    );
  }
}
