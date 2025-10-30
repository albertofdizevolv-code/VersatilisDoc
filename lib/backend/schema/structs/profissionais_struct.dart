// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfissionaisStruct extends BaseStruct {
  ProfissionaisStruct({
    int? codColaborador,
    String? nome,
  })  : _codColaborador = codColaborador,
        _nome = nome;

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

  static ProfissionaisStruct fromMap(Map<String, dynamic> data) =>
      ProfissionaisStruct(
        codColaborador: castToType<int>(data['CodColaborador']),
        nome: data['Nome'] as String?,
      );

  static ProfissionaisStruct? maybeFromMap(dynamic data) => data is Map
      ? ProfissionaisStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodColaborador': _codColaborador,
        'Nome': _nome,
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
      }.withoutNulls;

  static ProfissionaisStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProfissionaisStruct(
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
      );

  @override
  String toString() => 'ProfissionaisStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProfissionaisStruct &&
        codColaborador == other.codColaborador &&
        nome == other.nome;
  }

  @override
  int get hashCode => const ListEquality().hash([codColaborador, nome]);
}

ProfissionaisStruct createProfissionaisStruct({
  int? codColaborador,
  String? nome,
}) =>
    ProfissionaisStruct(
      codColaborador: codColaborador,
      nome: nome,
    );
