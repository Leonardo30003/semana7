
import 'package:flutter/material.dart';


class PantallaB extends StatefulWidget {
  final Function(int) callback;
  int counter;

  PantallaB({required this.counter, required this.callback});

  @override
  _PantallaBState createState() => _PantallaBState();
}

class _PantallaBState extends State<PantallaB> {
  void _incrementCounter() {
    setState(() {
      widget.counter++;
    });
    widget.callback(widget.counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla B'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(widget.counter);
          },
        ),
      ),
      // Resto del cuerpo de la Pantalla B
    );
  }
}
