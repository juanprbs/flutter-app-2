import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _cont = 123456789;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App', // Cambiado a String
      home: Scaffold(
        body: Center(
          // Añadido el widget Center para centrar el texto
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 10)),
            child: Text(
              '$_cont',
              style: const TextStyle(fontSize: 150),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blue,
            shape: const CircleBorder(),
            onPressed: () {
              setState(() {
                _cont = _cont + 1;
              });
              print(_cont);
            },
            child: const Icon(
              Icons.add,
              color: Colors.white,
            )),
      ),
    ); // Añadido el paréntesis de cierre
  }
}
