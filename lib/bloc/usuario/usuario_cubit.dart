import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'usuario_state.dart';

class UsuarioCubit extends Cubit<UsuarioState> {
  UsuarioCubit() : super(UsuarioInitial());

  void seleccionarUsuario(Usuario user) {
    emit(UsuarioActivo(user));
  }

  void cambiarEdad(int edad) {
    final currenState = state;
    if (currenState is UsuarioActivo) {
      final newUser = currenState.usuario.copiarUsuario(edad: edad);
      emit(UsuarioActivo(newUser));
    }
  }

  void agregarProfesion() {
    final currenState = state;
    if (currenState is UsuarioActivo) {
      final newProfesiones = [
        ...?currenState.usuario.profesiones,
        'profesion ${currenState.usuario.profesiones!.length + 1}'
      ];
      final newUser =
          currenState.usuario.copiarUsuario(profesiones: newProfesiones);
      emit(UsuarioActivo(newUser));
    }
  }

  void borrarUsuario() {
    emit(UsuarioInitial());
  }
}
