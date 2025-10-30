// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProcedimentoHorarioStruct extends BaseStruct {
  ProcedimentoHorarioStruct({
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

  static ProcedimentoHorarioStruct fromMap(Map<String, dynamic> data) =>
      ProcedimentoHorarioStruct(
        codProcedimento: castToType<int>(data['CodProcedimento']),
        nomeProcedimento: data['NomeProcedimento'] as String?,
      );

  static ProcedimentoHorarioStruct? maybeFromMap(dynamic data) => data is Map
      ? ProcedimentoHorarioStruct.fromMap(data.cast<String, dynamic>())
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

  static ProcedimentoHorarioStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProcedimentoHorarioStruct(
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
  String toString() => 'ProcedimentoHorarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProcedimentoHorarioStruct &&
        codProcedimento == other.codProcedimento &&
        nomeProcedimento == other.nomeProcedimento;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([codProcedimento, nomeProcedimento]);
}

ProcedimentoHorarioStruct createProcedimentoHorarioStruct({
  int? codProcedimento,
  String? nomeProcedimento,
}) =>
    ProcedimentoHorarioStruct(
      codProcedimento: codProcedimento,
      nomeProcedimento: nomeProcedimento,
    );
