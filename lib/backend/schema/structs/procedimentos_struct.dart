// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProcedimentosStruct extends BaseStruct {
  ProcedimentosStruct({
    int? codProcedimento,
    String? nomeProcedimento,
    int? codEspecialidade,
    String? nomeEspecialidade,
    bool? bitExame,
  })  : _codProcedimento = codProcedimento,
        _nomeProcedimento = nomeProcedimento,
        _codEspecialidade = codEspecialidade,
        _nomeEspecialidade = nomeEspecialidade,
        _bitExame = bitExame;

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

  // "BitExame" field.
  bool? _bitExame;
  bool get bitExame => _bitExame ?? false;
  set bitExame(bool? val) => _bitExame = val;

  bool hasBitExame() => _bitExame != null;

  static ProcedimentosStruct fromMap(Map<String, dynamic> data) =>
      ProcedimentosStruct(
        codProcedimento: castToType<int>(data['CodProcedimento']),
        nomeProcedimento: data['NomeProcedimento'] as String?,
        codEspecialidade: castToType<int>(data['CodEspecialidade']),
        nomeEspecialidade: data['NomeEspecialidade'] as String?,
        bitExame: data['BitExame'] as bool?,
      );

  static ProcedimentosStruct? maybeFromMap(dynamic data) => data is Map
      ? ProcedimentosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodProcedimento': _codProcedimento,
        'NomeProcedimento': _nomeProcedimento,
        'CodEspecialidade': _codEspecialidade,
        'NomeEspecialidade': _nomeEspecialidade,
        'BitExame': _bitExame,
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
        'CodEspecialidade': serializeParam(
          _codEspecialidade,
          ParamType.int,
        ),
        'NomeEspecialidade': serializeParam(
          _nomeEspecialidade,
          ParamType.String,
        ),
        'BitExame': serializeParam(
          _bitExame,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ProcedimentosStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProcedimentosStruct(
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
        bitExame: deserializeParam(
          data['BitExame'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ProcedimentosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProcedimentosStruct &&
        codProcedimento == other.codProcedimento &&
        nomeProcedimento == other.nomeProcedimento &&
        codEspecialidade == other.codEspecialidade &&
        nomeEspecialidade == other.nomeEspecialidade &&
        bitExame == other.bitExame;
  }

  @override
  int get hashCode => const ListEquality().hash([
        codProcedimento,
        nomeProcedimento,
        codEspecialidade,
        nomeEspecialidade,
        bitExame
      ]);
}

ProcedimentosStruct createProcedimentosStruct({
  int? codProcedimento,
  String? nomeProcedimento,
  int? codEspecialidade,
  String? nomeEspecialidade,
  bool? bitExame,
}) =>
    ProcedimentosStruct(
      codProcedimento: codProcedimento,
      nomeProcedimento: nomeProcedimento,
      codEspecialidade: codEspecialidade,
      nomeEspecialidade: nomeEspecialidade,
      bitExame: bitExame,
    );
