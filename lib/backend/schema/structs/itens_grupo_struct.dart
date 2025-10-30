// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItensGrupoStruct extends BaseStruct {
  ItensGrupoStruct({
    int? codProcedimento,
    String? nomeProcedimento,
  })  : _codProcedimento = codProcedimento,
        _nomeProcedimento = nomeProcedimento;

  // "CodProcedimento" field.
  int? _codProcedimento;
  int get codProcedimento => _codProcedimento ?? 0;
  set codProcedimento(int? val) => _codProcedimento = val;

  void incrementCodProcedimento(int amount) =>
      codProcedimento = codProcedimento + amount;

  bool hasCodProcedimento() => _codProcedimento != null;

  // "NomeProcedimento" field.
  String? _nomeProcedimento;
  String get nomeProcedimento => _nomeProcedimento ?? '';
  set nomeProcedimento(String? val) => _nomeProcedimento = val;

  bool hasNomeProcedimento() => _nomeProcedimento != null;

  static ItensGrupoStruct fromMap(Map<String, dynamic> data) =>
      ItensGrupoStruct(
        codProcedimento: castToType<int>(data['CodProcedimento']),
        nomeProcedimento: data['NomeProcedimento'] as String?,
      );

  static ItensGrupoStruct? maybeFromMap(dynamic data) => data is Map
      ? ItensGrupoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodProcedimento': _codProcedimento,
        'NomeProcedimento': _nomeProcedimento,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodProcedimento': serializeParam(
          _codProcedimento,
          ParamType.int,
        ),
        'NomeProcedimento': serializeParam(
          _nomeProcedimento,
          ParamType.String,
        ),
      }.withoutNulls;

  static ItensGrupoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItensGrupoStruct(
        codProcedimento: deserializeParam(
          data['CodProcedimento'],
          ParamType.int,
          false,
        ),
        nomeProcedimento: deserializeParam(
          data['NomeProcedimento'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ItensGrupoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ItensGrupoStruct &&
        codProcedimento == other.codProcedimento &&
        nomeProcedimento == other.nomeProcedimento;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([codProcedimento, nomeProcedimento]);
}

ItensGrupoStruct createItensGrupoStruct({
  int? codProcedimento,
  String? nomeProcedimento,
}) =>
    ItensGrupoStruct(
      codProcedimento: codProcedimento,
      nomeProcedimento: nomeProcedimento,
    );
