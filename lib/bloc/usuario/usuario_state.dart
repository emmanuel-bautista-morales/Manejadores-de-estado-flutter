part of 'usuario_cubit.dart';

@immutable
abstract class UsuarioState {}

class UsuarioInitial extends UsuarioState {
  final existeUsurio = false;
}

class UsuarioActivo extends UsuarioState {
  final existeUsurio = true;
  final Usuario usuario;

  UsuarioActivo(this.usuario);
}
