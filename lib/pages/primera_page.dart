import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_service.dart';
import 'package:flutter/material.dart';

class PrimeraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: StreamBuilder(
        stream: usuarioService.usuarioStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? InformacionUsuario(usuarioService.usuario)
              : Center(
                  child: Text('No hay informacion del usuario'),
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, 'pagina2'),
        child: Icon(Icons.ac_unit_sharp),
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  final Usuario usuario;

  const InformacionUsuario(this.usuario);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'General',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(
            title: Text('nombre: ${usuario.nombre}'),
          ),
          ListTile(
            title: Text('edad:${usuario.edad}'),
          ),
          Text(
            'Profesiones',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(
            title: Text('profesion:'),
          ),
          ListTile(
            title: Text('profe:'),
          ),
        ],
      ),
    );
  }
}
