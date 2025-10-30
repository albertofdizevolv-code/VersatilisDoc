// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PacienteStruct extends BaseStruct {
  PacienteStruct({
    int? codUsuario,
    String? nome,
    String? celular,
    String? email,
  })  : _codUsuario = codUsuario,
        _nome = nome,
        _celular = celular,
        _email = email;

  // "CodUsuario" field.
  int? _codUsuario;
  int get codUsuario => _codUsuario ?? 0;
  set codUsuario(int? val) => _codUsuario = val;

  void incrementCodUsuario(int amount) => codUsuario = codUsuario + amount;

  bool hasCodUsuario() => _codUsuario != null;

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "Celular" field.
  String? _celular;
  String get celular => _celular ?? '';
  set celular(String? val) => _celular = val;

  bool hasCelular() => _celular != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  static PacienteStruct fromMap(Map<String, dynamic> data) => PacienteStruct(
        codUsuario: castToType<int>(data['CodUsuario']),
        nome: data['Nome'] as String?,
        celular: data['Celular'] as String?,
        email: data['Email'] as String?,
      );

  static PacienteStruct? maybeFromMap(dynamic data) =>
      data is Map ? PacienteStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'CodUsuario': _codUsuario,
        'Nome': _nome,
        'Celular': _celular,
        'Email': _email,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodUsuario': serializeParam(
          _codUsuario,
          ParamType.int,
        ),
        'Nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'Celular': serializeParam(
          _celular,
          ParamType.String,
        ),
        'Email': serializeParam(
          _email,
          ParamType.String,
        ),
      }.withoutNulls;

  static PacienteStruct fromSerializableMap(Map<String, dynamic> data) =>
      PacienteStruct(
        codUsuario: deserializeParam(
          data['CodUsuario'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['Nome'],
          ParamType.String,
          false,
        ),
        celular: deserializeParam(
          data['Celular'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['Email'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PacienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PacienteStruct &&
        codUsuario == other.codUsuario &&
        nome == other.nome &&
        celular == other.celular &&
        email == other.email;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([codUsuario, nome, celular, email]);
}

PacienteStruct createPacienteStruct({
  int? codUsuario,
  String? nome,
  String? celular,
  String? email,
}) =>
    PacienteStruct(
      codUsuario: codUsuario,
      nome: nome,
      celular: celular,
      email: email,
    );
