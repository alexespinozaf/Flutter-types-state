import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SegundaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
          title: usuarioService.existeUsuario
              ? Text('${usuarioService.usuario.nombre}')
              : Text('pagina 2')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            child: Text('Establecer usuario'),
            color: Colors.blue[100],
            onPressed: () {
              final usuario = new Usuario(
                  nombre: 'alex',
                  edad: 33,
                  profesiones: ['profesion1', 'profesion2']);
              usuarioService.usuario = usuario;
            },
          ),
          MaterialButton(
            child: Text('Cambiar edad'),
            color: Colors.blue[100],
            onPressed: () {
              int edad = 30;
              usuarioService.cambiarEdad(edad);
            },
          ),
          MaterialButton(
            child: Text('Cambiar Profesion'),
            color: Colors.blue[100],
            onPressed: () {
              usuarioService.agregarProfesion();
            },
          )
        ],
      )),
    );
  }
}
