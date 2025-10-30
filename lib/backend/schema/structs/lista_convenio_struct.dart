// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListaConvenioStruct extends BaseStruct {
  ListaConvenioStruct({
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

  static ListaConvenioStruct fromMap(Map<String, dynamic> data) =>
      ListaConvenioStruct(
        codPlano: castToType<int>(data['CodPlano']),
        nomeConvenio: data['NomeConvenio'] as String?,
        nomePlano: data['NomePlano'] as String?,
      );

  static ListaConvenioStruct? maybeFromMap(dynamic data) => data is Map
      ? ListaConvenioStruct.fromMap(data.cast<String, dynamic>())
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

  static ListaConvenioStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListaConvenioStruct(
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
  String toString() => 'ListaConvenioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListaConvenioStruct &&
        codPlano == other.codPlano &&
        nomeConvenio == other.nomeConvenio &&
        nomePlano == other.nomePlano;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([codPlano, nomeConvenio, nomePlano]);
}

ListaConvenioStruct createListaConvenioStruct({
  int? codPlano,
  String? nomeConvenio,
  String? nomePlano,
}) =>
    ListaConvenioStruct(
      codPlano: codPlano,
      nomeConvenio: nomeConvenio,
      nomePlano: nomePlano,
    );
