// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SolicitacaoExameItensStruct extends BaseStruct {
  SolicitacaoExameItensStruct({
    int? codProcedimento,
    int? codGrupoExame,
    int? qtdSolicitada,
  })  : _codProcedimento = codProcedimento,
        _codGrupoExame = codGrupoExame,
        _qtdSolicitada = qtdSolicitada;

  // "CodProcedimento" field.
  int? _codProcedimento;
  int get codProcedimento => _codProcedimento ?? 0;
  set codProcedimento(int? val) => _codProcedimento = val;

  void incrementCodProcedimento(int amount) =>
      codProcedimento = codProcedimento + amount;

  bool hasCodProcedimento() => _codProcedimento != null;

  // "CodGrupoExame" field.
  int? _codGrupoExame;
  int get codGrupoExame => _codGrupoExame ?? 0;
  set codGrupoExame(int? val) => _codGrupoExame = val;

  void incrementCodGrupoExame(int amount) =>
      codGrupoExame = codGrupoExame + amount;

  bool hasCodGrupoExame() => _codGrupoExame != null;

  // "QtdSolicitada" field.
  int? _qtdSolicitada;
  int get qtdSolicitada => _qtdSolicitada ?? 0;
  set qtdSolicitada(int? val) => _qtdSolicitada = val;

  void incrementQtdSolicitada(int amount) =>
      qtdSolicitada = qtdSolicitada + amount;

  bool hasQtdSolicitada() => _qtdSolicitada != null;

  static SolicitacaoExameItensStruct fromMap(Map<String, dynamic> data) =>
      SolicitacaoExameItensStruct(
        codProcedimento: castToType<int>(data['CodProcedimento']),
        codGrupoExame: castToType<int>(data['CodGrupoExame']),
        qtdSolicitada: castToType<int>(data['QtdSolicitada']),
      );

  static SolicitacaoExameItensStruct? maybeFromMap(dynamic data) => data is Map
      ? SolicitacaoExameItensStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodProcedimento': _codProcedimento,
        'CodGrupoExame': _codGrupoExame,
        'QtdSolicitada': _qtdSolicitada,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodProcedimento': serializeParam(
          _codProcedimento,
          ParamType.int,
        ),
        'CodGrupoExame': serializeParam(
          _codGrupoExame,
          ParamType.int,
        ),
        'QtdSolicitada': serializeParam(
          _qtdSolicitada,
          ParamType.int,
        ),
      }.withoutNulls;

  static SolicitacaoExameItensStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SolicitacaoExameItensStruct(
        codProcedimento: deserializeParam(
          data['CodProcedimento'],
          ParamType.int,
          false,
        ),
        codGrupoExame: deserializeParam(
          data['CodGrupoExame'],
          ParamType.int,
          false,
        ),
        qtdSolicitada: deserializeParam(
          data['QtdSolicitada'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'SolicitacaoExameItensStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SolicitacaoExameItensStruct &&
        codProcedimento == other.codProcedimento &&
        codGrupoExame == other.codGrupoExame &&
        qtdSolicitada == other.qtdSolicitada;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([codProcedimento, codGrupoExame, qtdSolicitada]);
}

SolicitacaoExameItensStruct createSolicitacaoExameItensStruct({
  int? codProcedimento,
  int? codGrupoExame,
  int? qtdSolicitada,
}) =>
    SolicitacaoExameItensStruct(
      codProcedimento: codProcedimento,
      codGrupoExame: codGrupoExame,
      qtdSolicitada: qtdSolicitada,
    );
