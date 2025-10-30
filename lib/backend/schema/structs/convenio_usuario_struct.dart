// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConvenioUsuarioStruct extends BaseStruct {
  ConvenioUsuarioStruct({
    int? codPlano,
    String? nomeConvenio,
    String? nomePlano,
  })  : _codPlano = codPlano,
        _nomeConvenio = nomeConvenio,
        _nomePlano = nomePlano;

  // "CodPlano" field.
  int? _codPlano;
  int get codPlano => _codPlano ?? 0;
  set codPlano(int? val) => _codPlano = val;

  void incrementCodPlano(int amount) => codPlano = codPlano + amount;

  bool hasCodPlano() => _codPlano != null;

  // "NomeConvenio" field.
  String? _nomeConvenio;
  String get nomeConvenio => _nomeConvenio ?? '';
  set nomeConvenio(String? val) => _nomeConvenio = val;

  bool hasNomeConvenio() => _nomeConvenio != null;

  // "NomePlano" field.
  String? _nomePlano;
  String get nomePlano => _nomePlano ?? '';
  set nomePlano(String? val) => _nomePlano = val;

  bool hasNomePlano() => _nomePlano != null;

  static ConvenioUsuarioStruct fromMap(Map<String, dynamic> data) =>
      ConvenioUsuarioStruct(
        codPlano: castToType<int>(data['CodPlano']),
        nomeConvenio: data['NomeConvenio'] as String?,
        nomePlano: data['NomePlano'] as String?,
      );

  static ConvenioUsuarioStruct? maybeFromMap(dynamic data) => data is Map
      ? ConvenioUsuarioStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodPlano': _codPlano,
        'NomeConvenio': _nomeConvenio,
        'NomePlano': _nomePlano,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodPlano': serializeParam(
          _codPlano,
          ParamType.int,
        ),
        'NomeConvenio': serializeParam(
          _nomeConvenio,
          ParamType.String,
        ),
        'NomePlano': serializeParam(
          _nomePlano,
          ParamType.String,
        ),
      }.withoutNulls;

  static ConvenioUsuarioStruct fromSerializableMap(Map<String, dynamic> data) =>
      ConvenioUsuarioStruct(
        codPlano: deserializeParam(
          data['CodPlano'],
          ParamType.int,
          false,
        ),
        nomeConvenio: deserializeParam(
          data['NomeConvenio'],
          ParamType.String,
          false,
        ),
        nomePlano: deserializeParam(
          data['NomePlano'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ConvenioUsuarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConvenioUsuarioStruct &&
        codPlano == other.codPlano &&
        nomeConvenio == other.nomeConvenio &&
        nomePlano == other.nomePlano;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([codPlano, nomeConvenio, nomePlano]);
}

ConvenioUsuarioStruct createConvenioUsuarioStruct({
  int? codPlano,
  String? nomeConvenio,
  String? nomePlano,
}) =>
    ConvenioUsuarioStruct(
      codPlano: codPlano,
      nomeConvenio: nomeConvenio,
      nomePlano: nomePlano,
    );
