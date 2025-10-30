// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UnidadeStruct extends BaseStruct {
  UnidadeStruct({
    int? codUnidade,
    String? nomeUnidade,
    String? endereco,
  })  : _codUnidade = codUnidade,
        _nomeUnidade = nomeUnidade,
        _endereco = endereco;

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

  // "Endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  set endereco(String? val) => _endereco = val;

  bool hasEndereco() => _endereco != null;

  static UnidadeStruct fromMap(Map<String, dynamic> data) => UnidadeStruct(
        codUnidade: castToType<int>(data['CodUnidade']),
        nomeUnidade: data['NomeUnidade'] as String?,
        endereco: data['Endereco'] as String?,
      );

  static UnidadeStruct? maybeFromMap(dynamic data) =>
      data is Map ? UnidadeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'CodUnidade': _codUnidade,
        'NomeUnidade': _nomeUnidade,
        'Endereco': _endereco,
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
        'Endereco': serializeParam(
          _endereco,
          ParamType.String,
        ),
      }.withoutNulls;

  static UnidadeStruct fromSerializableMap(Map<String, dynamic> data) =>
      UnidadeStruct(
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
        endereco: deserializeParam(
          data['Endereco'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UnidadeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UnidadeStruct &&
        codUnidade == other.codUnidade &&
        nomeUnidade == other.nomeUnidade &&
        endereco == other.endereco;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([codUnidade, nomeUnidade, endereco]);
}

UnidadeStruct createUnidadeStruct({
  int? codUnidade,
  String? nomeUnidade,
  String? endereco,
}) =>
    UnidadeStruct(
      codUnidade: codUnidade,
      nomeUnidade: nomeUnidade,
      endereco: endereco,
    );
