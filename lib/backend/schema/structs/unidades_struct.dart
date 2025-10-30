// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UnidadesStruct extends BaseStruct {
  UnidadesStruct({
    int? codUnidade,
    String? nomeUnidade,
  })  : _codUnidade = codUnidade,
        _nomeUnidade = nomeUnidade;

  // "CodUnidade" field.
  int? _codUnidade;
  int get codUnidade => _codUnidade ?? 0;
  set codUnidade(int? val) => _codUnidade = val;

  void incrementCodUnidade(int amount) => codUnidade = codUnidade + amount;

  bool hasCodUnidade() => _codUnidade != null;

  // "NomeUnidade" field.
  String? _nomeUnidade;
  String get nomeUnidade => _nomeUnidade ?? '';
  set nomeUnidade(String? val) => _nomeUnidade = val;

  bool hasNomeUnidade() => _nomeUnidade != null;

  static UnidadesStruct fromMap(Map<String, dynamic> data) => UnidadesStruct(
        codUnidade: castToType<int>(data['CodUnidade']),
        nomeUnidade: data['NomeUnidade'] as String?,
      );

  static UnidadesStruct? maybeFromMap(dynamic data) =>
      data is Map ? UnidadesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'CodUnidade': _codUnidade,
        'NomeUnidade': _nomeUnidade,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodUnidade': serializeParam(
          _codUnidade,
          ParamType.int,
        ),
        'NomeUnidade': serializeParam(
          _nomeUnidade,
          ParamType.String,
        ),
      }.withoutNulls;

  static UnidadesStruct fromSerializableMap(Map<String, dynamic> data) =>
      UnidadesStruct(
        codUnidade: deserializeParam(
          data['CodUnidade'],
          ParamType.int,
          false,
        ),
        nomeUnidade: deserializeParam(
          data['NomeUnidade'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UnidadesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UnidadesStruct &&
        codUnidade == other.codUnidade &&
        nomeUnidade == other.nomeUnidade;
  }

  @override
  int get hashCode => const ListEquality().hash([codUnidade, nomeUnidade]);
}

UnidadesStruct createUnidadesStruct({
  int? codUnidade,
  String? nomeUnidade,
}) =>
    UnidadesStruct(
      codUnidade: codUnidade,
      nomeUnidade: nomeUnidade,
    );
