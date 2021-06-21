import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';

class UsuarioService with ChangeNotifier {
  Usuario _usuario = Usuario();

  Usuario get usuario => this._usuario;

  bool get existeUsuario => this._usuario.nombre != null ? true : false;

  set usuario(Usuario usuario) {
    this._usuario = usuario;
    notifyListeners();
  }

  void cambiarEdad(int edad) {
    this.usuario.edad = edad;
    notifyListeners();
  }

  void removeUsuario() {
    this._usuario.nombre = null;
    notifyListeners();
  }

  void agregarProfesion() {
    this
        ._usuario
        .profesiones!
        .add('Profesion ${usuario.profesiones!.length + 1}');

    notifyListeners();
  }
}
