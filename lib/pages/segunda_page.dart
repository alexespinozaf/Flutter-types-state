import 'package:estados/bloc/usuario/usuario_cubit.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SegundaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<UsuarioCubit>(context, listen: false);

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
            onPressed: () {
              final newUser = Usuario(
                  nombre: 'Alex',
                  edad: 22,
                  profesiones: ['profesion1', 'profesion2']);
              bloc.seleccionarUsuario(newUser);
            },
          ),
          MaterialButton(
            child: Text('Cambiar edad'),
            color: Colors.blue[100],
            onPressed: () {
              bloc.cambiarEdad(40);
            },
          ),
          MaterialButton(
            child: Text('Cambiar Profesion'),
            color: Colors.blue[100],
            onPressed: () {
              bloc.agregarProfesion();
            },
          )
        ],
      )),
    );
  }
}
