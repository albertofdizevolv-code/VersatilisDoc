// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicoStruct extends BaseStruct {
  MedicoStruct({
    int? codColaborador,
    String? nome,
    String? token,
  })  : _codColaborador = codColaborador,
        _nome = nome,
        _token = token;

  // "CodColaborador" field.
  int? _codColaborador;
  int get codColaborador => _codColaborador ?? 0;
  set codColaborador(int? val) => _codColaborador = val;

  void incrementCodColaborador(int amount) =>
      codColaborador = codColaborador + amount;

  bool hasCodColaborador() => _codColaborador != null;

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "Token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;

  bool hasToken() => _token != null;

  static MedicoStruct fromMap(Map<String, dynamic> data) => MedicoStruct(
        codColaborador: castToType<int>(data['CodColaborador']),
        nome: data['Nome'] as String?,
        token: data['Token'] as String?,
      );

  static MedicoStruct? maybeFromMap(dynamic data) =>
      data is Map ? MedicoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'CodColaborador': _codColaborador,
        'Nome': _nome,
        'Token': _token,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodColaborador': serializeParam(
          _codColaborador,
          ParamType.int,
        ),
        'Nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'Token': serializeParam(
          _token,
          ParamType.String,
        ),
      }.withoutNulls;

  static MedicoStruct fromSerializableMap(Map<String, dynamic> data) =>
      MedicoStruct(
        codColaborador: deserializeParam(
          data['CodColaborador'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['Nome'],
          ParamType.String,
          false,
        ),
        token: deserializeParam(
          data['Token'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MedicoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MedicoStruct &&
        codColaborador == other.codColaborador &&
        nome == other.nome &&
        token == other.token;
  }

  @override
  int get hashCode => const ListEquality().hash([codColaborador, nome, token]);
}

MedicoStruct createMedicoStruct({
  int? codColaborador,
  String? nome,
  String? token,
}) =>
    MedicoStruct(
      codColaborador: codColaborador,
      nome: nome,
      token: token,
    );
