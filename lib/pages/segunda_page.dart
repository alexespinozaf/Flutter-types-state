import 'package:flutter/material.dart';

class SegundaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            child: Text('Establecer usuario'),
            color: Colors.blue[100],
            onPressed: () {},
          ),
          MaterialButton(
            child: Text('Cambiar edad'),
            color: Colors.blue[100],
            onPressed: () {},
          ),
          MaterialButton(
            child: Text('Cambiar Profesion'),
            color: Colors.blue[100],
            onPressed: () {},
          )
        ],
      )),
    );
  }
}
