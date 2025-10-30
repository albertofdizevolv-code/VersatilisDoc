// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItensStruct extends BaseStruct {
  ItensStruct({
    int? codEspecialidade,
    String? nomeEspecialidade,
    int? codProcedimento,
    String? nomeProcedimento,
    int? numSessoesTotais,
    int? numSessoesRealizadas,
    int? numSessoesRestantes,
  })  : _codEspecialidade = codEspecialidade,
        _nomeEspecialidade = nomeEspecialidade,
        _codProcedimento = codProcedimento,
        _nomeProcedimento = nomeProcedimento,
        _numSessoesTotais = numSessoesTotais,
        _numSessoesRealizadas = numSessoesRealizadas,
        _numSessoesRestantes = numSessoesRestantes;

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

  // "NumSessoesTotais" field.
  int? _numSessoesTotais;
  int get numSessoesTotais => _numSessoesTotais ?? 0;
  set numSessoesTotais(int? val) => _numSessoesTotais = val;

  void incrementNumSessoesTotais(int amount) =>
      numSessoesTotais = numSessoesTotais + amount;

  bool hasNumSessoesTotais() => _numSessoesTotais != null;

  // "NumSessoesRealizadas" field.
  int? _numSessoesRealizadas;
  int get numSessoesRealizadas => _numSessoesRealizadas ?? 0;
  set numSessoesRealizadas(int? val) => _numSessoesRealizadas = val;

  void incrementNumSessoesRealizadas(int amount) =>
      numSessoesRealizadas = numSessoesRealizadas + amount;

  bool hasNumSessoesRealizadas() => _numSessoesRealizadas != null;

  // "NumSessoesRestantes" field.
  int? _numSessoesRestantes;
  int get numSessoesRestantes => _numSessoesRestantes ?? 0;
  set numSessoesRestantes(int? val) => _numSessoesRestantes = val;

  void incrementNumSessoesRestantes(int amount) =>
      numSessoesRestantes = numSessoesRestantes + amount;

  bool hasNumSessoesRestantes() => _numSessoesRestantes != null;

  static ItensStruct fromMap(Map<String, dynamic> data) => ItensStruct(
        codEspecialidade: castToType<int>(data['CodEspecialidade']),
        nomeEspecialidade: data['NomeEspecialidade'] as String?,
        codProcedimento: castToType<int>(data['CodProcedimento']),
        nomeProcedimento: data['NomeProcedimento'] as String?,
        numSessoesTotais: castToType<int>(data['NumSessoesTotais']),
        numSessoesRealizadas: castToType<int>(data['NumSessoesRealizadas']),
        numSessoesRestantes: castToType<int>(data['NumSessoesRestantes']),
      );

  static ItensStruct? maybeFromMap(dynamic data) =>
      data is Map ? ItensStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'CodEspecialidade': _codEspecialidade,
        'NomeEspecialidade': _nomeEspecialidade,
        'CodProcedimento': _codProcedimento,
        'NomeProcedimento': _nomeProcedimento,
        'NumSessoesTotais': _numSessoesTotais,
        'NumSessoesRealizadas': _numSessoesRealizadas,
        'NumSessoesRestantes': _numSessoesRestantes,
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
        'CodProcedimento': serializeParam(
          _codProcedimento,
          ParamType.int,
        ),
        'NomeProcedimento': serializeParam(
          _nomeProcedimento,
          ParamType.String,
        ),
        'NumSessoesTotais': serializeParam(
          _numSessoesTotais,
          ParamType.int,
        ),
        'NumSessoesRealizadas': serializeParam(
          _numSessoesRealizadas,
          ParamType.int,
        ),
        'NumSessoesRestantes': serializeParam(
          _numSessoesRestantes,
          ParamType.int,
        ),
      }.withoutNulls;

  static ItensStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItensStruct(
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
        numSessoesTotais: deserializeParam(
          data['NumSessoesTotais'],
          ParamType.int,
          false,
        ),
        numSessoesRealizadas: deserializeParam(
          data['NumSessoesRealizadas'],
          ParamType.int,
          false,
        ),
        numSessoesRestantes: deserializeParam(
          data['NumSessoesRestantes'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ItensStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ItensStruct &&
        codEspecialidade == other.codEspecialidade &&
        nomeEspecialidade == other.nomeEspecialidade &&
        codProcedimento == other.codProcedimento &&
        nomeProcedimento == other.nomeProcedimento &&
        numSessoesTotais == other.numSessoesTotais &&
        numSessoesRealizadas == other.numSessoesRealizadas &&
        numSessoesRestantes == other.numSessoesRestantes;
  }

  @override
  int get hashCode => const ListEquality().hash([
        codEspecialidade,
        nomeEspecialidade,
        codProcedimento,
        nomeProcedimento,
        numSessoesTotais,
        numSessoesRealizadas,
        numSessoesRestantes
      ]);
}

ItensStruct createItensStruct({
  int? codEspecialidade,
  String? nomeEspecialidade,
  int? codProcedimento,
  String? nomeProcedimento,
  int? numSessoesTotais,
  int? numSessoesRealizadas,
  int? numSessoesRestantes,
}) =>
    ItensStruct(
      codEspecialidade: codEspecialidade,
      nomeEspecialidade: nomeEspecialidade,
      codProcedimento: codProcedimento,
      nomeProcedimento: nomeProcedimento,
      numSessoesTotais: numSessoesTotais,
      numSessoesRealizadas: numSessoesRealizadas,
      numSessoesRestantes: numSessoesRestantes,
    );
