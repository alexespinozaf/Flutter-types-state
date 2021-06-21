import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_service.dart';
import 'package:flutter/material.dart';

class SegundaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: usuarioService.usuarioStream,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return snapshot.hasData
                ? Text('${snapshot.data.nombre}')
                : Text('Pagina 2');
          },
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            child: Text('Establecer usuario'),
            color: Colors.blue[100],
            onPressed: () {
              final nuevoUsuario = new Usuario(
                  nombre: 'nombre',
                  edad: 12,
                  profesiones: ['primera profecion']);
              usuarioService.cargarUsuario(nuevoUsuario);
            },
          ),
          MaterialButton(
            child: Text('Cambiar edad'),
            color: Colors.blue[100],
            onPressed: () {
              usuarioService.cambiarEdad(22);
            },
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
