// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReqEspecialidadesStruct extends BaseStruct {
  ReqEspecialidadesStruct({
    int? codEspecialidade,
    String? nomeEspecialidade,
    int? preco,
    String? descricao,
  })  : _codEspecialidade = codEspecialidade,
        _nomeEspecialidade = nomeEspecialidade,
        _preco = preco,
        _descricao = descricao;

  // "CodEspecialidade" field.
  int? _codEspecialidade;
  int get codEspecialidade => _codEspecialidade ?? 0;
  set codEspecialidade(int? val) => _codEspecialidade = val;

  void incrementCodEspecialidade(int amount) =>
      codEspecialidade = codEspecialidade + amount;

  bool hasCodEspecialidade() => _codEspecialidade != null;

  // "NomeEspecialidade" field.
  String? _nomeEspecialidade;
  String get nomeEspecialidade => _nomeEspecialidade ?? '';
  set nomeEspecialidade(String? val) => _nomeEspecialidade = val;

  bool hasNomeEspecialidade() => _nomeEspecialidade != null;

  // "Preco" field.
  int? _preco;
  int get preco => _preco ?? 0;
  set preco(int? val) => _preco = val;

  void incrementPreco(int amount) => preco = preco + amount;

  bool hasPreco() => _preco != null;

  // "Descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  static ReqEspecialidadesStruct fromMap(Map<String, dynamic> data) =>
      ReqEspecialidadesStruct(
        codEspecialidade: castToType<int>(data['CodEspecialidade']),
        nomeEspecialidade: data['NomeEspecialidade'] as String?,
        preco: castToType<int>(data['Preco']),
        descricao: data['Descricao'] as String?,
      );

  static ReqEspecialidadesStruct? maybeFromMap(dynamic data) => data is Map
      ? ReqEspecialidadesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodEspecialidade': _codEspecialidade,
        'NomeEspecialidade': _nomeEspecialidade,
        'Preco': _preco,
        'Descricao': _descricao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodEspecialidade': serializeParam(
          _codEspecialidade,
          ParamType.int,
        ),
        'NomeEspecialidade': serializeParam(
          _nomeEspecialidade,
          ParamType.String,
        ),
        'Preco': serializeParam(
          _preco,
          ParamType.int,
        ),
        'Descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReqEspecialidadesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReqEspecialidadesStruct(
        codEspecialidade: deserializeParam(
          data['CodEspecialidade'],
          ParamType.int,
          false,
        ),
        nomeEspecialidade: deserializeParam(
          data['NomeEspecialidade'],
          ParamType.String,
          false,
        ),
        preco: deserializeParam(
          data['Preco'],
          ParamType.int,
          false,
        ),
        descricao: deserializeParam(
          data['Descricao'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReqEspecialidadesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReqEspecialidadesStruct &&
        codEspecialidade == other.codEspecialidade &&
        nomeEspecialidade == other.nomeEspecialidade &&
        preco == other.preco &&
        descricao == other.descricao;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([codEspecialidade, nomeEspecialidade, preco, descricao]);
}

ReqEspecialidadesStruct createReqEspecialidadesStruct({
  int? codEspecialidade,
  String? nomeEspecialidade,
  int? preco,
  String? descricao,
}) =>
    ReqEspecialidadesStruct(
      codEspecialidade: codEspecialidade,
      nomeEspecialidade: nomeEspecialidade,
      preco: preco,
      descricao: descricao,
    );
