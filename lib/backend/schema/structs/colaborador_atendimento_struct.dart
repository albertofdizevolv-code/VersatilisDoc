// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ColaboradorAtendimentoStruct extends BaseStruct {
  ColaboradorAtendimentoStruct({
    int? codColaborador,
    String? nomeColaborador,
  })  : _codColaborador = codColaborador,
        _nomeColaborador = nomeColaborador;

  // "CodColaborador" field.
  int? _codColaborador;
  int get codColaborador => _codColaborador ?? 0;
  set codColaborador(int? val) => _codColaborador = val;

  void incrementCodColaborador(int amount) =>
      codColaborador = codColaborador + amount;

  bool hasCodColaborador() => _codColaborador != null;

  // "NomeColaborador" field.
  String? _nomeColaborador;
  String get nomeColaborador => _nomeColaborador ?? '';
  set nomeColaborador(String? val) => _nomeColaborador = val;

  bool hasNomeColaborador() => _nomeColaborador != null;

  static ColaboradorAtendimentoStruct fromMap(Map<String, dynamic> data) =>
      ColaboradorAtendimentoStruct(
        codColaborador: castToType<int>(data['CodColaborador']),
        nomeColaborador: data['NomeColaborador'] as String?,
      );

  static ColaboradorAtendimentoStruct? maybeFromMap(dynamic data) => data is Map
      ? ColaboradorAtendimentoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodColaborador': _codColaborador,
        'NomeColaborador': _nomeColaborador,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodColaborador': serializeParam(
          _codColaborador,
          ParamType.int,
        ),
        'NomeColaborador': serializeParam(
          _nomeColaborador,
          ParamType.String,
        ),
      }.withoutNulls;

  static ColaboradorAtendimentoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ColaboradorAtendimentoStruct(
        codColaborador: deserializeParam(
          data['CodColaborador'],
          ParamType.int,
          false,
        ),
        nomeColaborador: deserializeParam(
          data['NomeColaborador'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ColaboradorAtendimentoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ColaboradorAtendimentoStruct &&
        codColaborador == other.codColaborador &&
        nomeColaborador == other.nomeColaborador;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([codColaborador, nomeColaborador]);
}

ColaboradorAtendimentoStruct createColaboradorAtendimentoStruct({
  int? codColaborador,
  String? nomeColaborador,
}) =>
    ColaboradorAtendimentoStruct(
      codColaborador: codColaborador,
      nomeColaborador: nomeColaborador,
    );
