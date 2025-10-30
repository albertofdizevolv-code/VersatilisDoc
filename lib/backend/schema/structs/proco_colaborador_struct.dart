// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProcoColaboradorStruct extends BaseStruct {
  ProcoColaboradorStruct({
    int? codUnidade,
    String? unidade,
    int? codColaborador,
    String? colaborador,
    int? codEspecialidade,
    String? especialidade,
    int? codProcedimento,
    String? procedimento,
    int? codConvenio,
    String? convenio,
    int? codConvenioTipo,
    String? convenioTipo,
    int? preco,
  })  : _codUnidade = codUnidade,
        _unidade = unidade,
        _codColaborador = codColaborador,
        _colaborador = colaborador,
        _codEspecialidade = codEspecialidade,
        _especialidade = especialidade,
        _codProcedimento = codProcedimento,
        _procedimento = procedimento,
        _codConvenio = codConvenio,
        _convenio = convenio,
        _codConvenioTipo = codConvenioTipo,
        _convenioTipo = convenioTipo,
        _preco = preco;

  // "CodUnidade" field.
  int? _codUnidade;
  int get codUnidade => _codUnidade ?? 0;
  set codUnidade(int? val) => _codUnidade = val;

  void incrementCodUnidade(int amount) => codUnidade = codUnidade + amount;

  bool hasCodUnidade() => _codUnidade != null;

  // "Unidade" field.
  String? _unidade;
  String get unidade => _unidade ?? '';
  set unidade(String? val) => _unidade = val;

  bool hasUnidade() => _unidade != null;

  // "CodColaborador" field.
  int? _codColaborador;
  int get codColaborador => _codColaborador ?? 0;
  set codColaborador(int? val) => _codColaborador = val;

  void incrementCodColaborador(int amount) =>
      codColaborador = codColaborador + amount;

  bool hasCodColaborador() => _codColaborador != null;

  // "Colaborador" field.
  String? _colaborador;
  String get colaborador => _colaborador ?? '';
  set colaborador(String? val) => _colaborador = val;

  bool hasColaborador() => _colaborador != null;

  // "CodEspecialidade" field.
  int? _codEspecialidade;
  int get codEspecialidade => _codEspecialidade ?? 0;
  set codEspecialidade(int? val) => _codEspecialidade = val;

  void incrementCodEspecialidade(int amount) =>
      codEspecialidade = codEspecialidade + amount;

  bool hasCodEspecialidade() => _codEspecialidade != null;

  // "Especialidade" field.
  String? _especialidade;
  String get especialidade => _especialidade ?? '';
  set especialidade(String? val) => _especialidade = val;

  bool hasEspecialidade() => _especialidade != null;

  // "CodProcedimento" field.
  int? _codProcedimento;
  int get codProcedimento => _codProcedimento ?? 0;
  set codProcedimento(int? val) => _codProcedimento = val;

  void incrementCodProcedimento(int amount) =>
      codProcedimento = codProcedimento + amount;

  bool hasCodProcedimento() => _codProcedimento != null;

  // "Procedimento" field.
  String? _procedimento;
  String get procedimento => _procedimento ?? '';
  set procedimento(String? val) => _procedimento = val;

  bool hasProcedimento() => _procedimento != null;

  // "CodConvenio" field.
  int? _codConvenio;
  int get codConvenio => _codConvenio ?? 0;
  set codConvenio(int? val) => _codConvenio = val;

  void incrementCodConvenio(int amount) => codConvenio = codConvenio + amount;

  bool hasCodConvenio() => _codConvenio != null;

  // "Convenio" field.
  String? _convenio;
  String get convenio => _convenio ?? '';
  set convenio(String? val) => _convenio = val;

  bool hasConvenio() => _convenio != null;

  // "CodConvenioTipo" field.
  int? _codConvenioTipo;
  int get codConvenioTipo => _codConvenioTipo ?? 0;
  set codConvenioTipo(int? val) => _codConvenioTipo = val;

  void incrementCodConvenioTipo(int amount) =>
      codConvenioTipo = codConvenioTipo + amount;

  bool hasCodConvenioTipo() => _codConvenioTipo != null;

  // "ConvenioTipo" field.
  String? _convenioTipo;
  String get convenioTipo => _convenioTipo ?? '';
  set convenioTipo(String? val) => _convenioTipo = val;

  bool hasConvenioTipo() => _convenioTipo != null;

  // "Preco" field.
  int? _preco;
  int get preco => _preco ?? 0;
  set preco(int? val) => _preco = val;

  void incrementPreco(int amount) => preco = preco + amount;

  bool hasPreco() => _preco != null;

  static ProcoColaboradorStruct fromMap(Map<String, dynamic> data) =>
      ProcoColaboradorStruct(
        codUnidade: castToType<int>(data['CodUnidade']),
        unidade: data['Unidade'] as String?,
        codColaborador: castToType<int>(data['CodColaborador']),
        colaborador: data['Colaborador'] as String?,
        codEspecialidade: castToType<int>(data['CodEspecialidade']),
        especialidade: data['Especialidade'] as String?,
        codProcedimento: castToType<int>(data['CodProcedimento']),
        procedimento: data['Procedimento'] as String?,
        codConvenio: castToType<int>(data['CodConvenio']),
        convenio: data['Convenio'] as String?,
        codConvenioTipo: castToType<int>(data['CodConvenioTipo']),
        convenioTipo: data['ConvenioTipo'] as String?,
        preco: castToType<int>(data['Preco']),
      );

  static ProcoColaboradorStruct? maybeFromMap(dynamic data) => data is Map
      ? ProcoColaboradorStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodUnidade': _codUnidade,
        'Unidade': _unidade,
        'CodColaborador': _codColaborador,
        'Colaborador': _colaborador,
        'CodEspecialidade': _codEspecialidade,
        'Especialidade': _especialidade,
        'CodProcedimento': _codProcedimento,
        'Procedimento': _procedimento,
        'CodConvenio': _codConvenio,
        'Convenio': _convenio,
        'CodConvenioTipo': _codConvenioTipo,
        'ConvenioTipo': _convenioTipo,
        'Preco': _preco,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodUnidade': serializeParam(
          _codUnidade,
          ParamType.int,
        ),
        'Unidade': serializeParam(
          _unidade,
          ParamType.String,
        ),
        'CodColaborador': serializeParam(
          _codColaborador,
          ParamType.int,
        ),
        'Colaborador': serializeParam(
          _colaborador,
          ParamType.String,
        ),
        'CodEspecialidade': serializeParam(
          _codEspecialidade,
          ParamType.int,
        ),
        'Especialidade': serializeParam(
          _especialidade,
          ParamType.String,
        ),
        'CodProcedimento': serializeParam(
          _codProcedimento,
          ParamType.int,
        ),
        'Procedimento': serializeParam(
          _procedimento,
          ParamType.String,
        ),
        'CodConvenio': serializeParam(
          _codConvenio,
          ParamType.int,
        ),
        'Convenio': serializeParam(
          _convenio,
          ParamType.String,
        ),
        'CodConvenioTipo': serializeParam(
          _codConvenioTipo,
          ParamType.int,
        ),
        'ConvenioTipo': serializeParam(
          _convenioTipo,
          ParamType.String,
        ),
        'Preco': serializeParam(
          _preco,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProcoColaboradorStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProcoColaboradorStruct(
        codUnidade: deserializeParam(
          data['CodUnidade'],
          ParamType.int,
          false,
        ),
        unidade: deserializeParam(
          data['Unidade'],
          ParamType.String,
          false,
        ),
        codColaborador: deserializeParam(
          data['CodColaborador'],
          ParamType.int,
          false,
        ),
        colaborador: deserializeParam(
          data['Colaborador'],
          ParamType.String,
          false,
        ),
        codEspecialidade: deserializeParam(
          data['CodEspecialidade'],
          ParamType.int,
          false,
        ),
        especialidade: deserializeParam(
          data['Especialidade'],
          ParamType.String,
          false,
        ),
        codProcedimento: deserializeParam(
          data['CodProcedimento'],
          ParamType.int,
          false,
        ),
        procedimento: deserializeParam(
          data['Procedimento'],
          ParamType.String,
          false,
        ),
        codConvenio: deserializeParam(
          data['CodConvenio'],
          ParamType.int,
          false,
        ),
        convenio: deserializeParam(
          data['Convenio'],
          ParamType.String,
          false,
        ),
        codConvenioTipo: deserializeParam(
          data['CodConvenioTipo'],
          ParamType.int,
          false,
        ),
        convenioTipo: deserializeParam(
          data['ConvenioTipo'],
          ParamType.String,
          false,
        ),
        preco: deserializeParam(
          data['Preco'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProcoColaboradorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProcoColaboradorStruct &&
        codUnidade == other.codUnidade &&
        unidade == other.unidade &&
        codColaborador == other.codColaborador &&
        colaborador == other.colaborador &&
        codEspecialidade == other.codEspecialidade &&
        especialidade == other.especialidade &&
        codProcedimento == other.codProcedimento &&
        procedimento == other.procedimento &&
        codConvenio == other.codConvenio &&
        convenio == other.convenio &&
        codConvenioTipo == other.codConvenioTipo &&
        convenioTipo == other.convenioTipo &&
        preco == other.preco;
  }

  @override
  int get hashCode => const ListEquality().hash([
        codUnidade,
        unidade,
        codColaborador,
        colaborador,
        codEspecialidade,
        especialidade,
        codProcedimento,
        procedimento,
        codConvenio,
        convenio,
        codConvenioTipo,
        convenioTipo,
        preco
      ]);
}

ProcoColaboradorStruct createProcoColaboradorStruct({
  int? codUnidade,
  String? unidade,
  int? codColaborador,
  String? colaborador,
  int? codEspecialidade,
  String? especialidade,
  int? codProcedimento,
  String? procedimento,
  int? codConvenio,
  String? convenio,
  int? codConvenioTipo,
  String? convenioTipo,
  int? preco,
}) =>
    ProcoColaboradorStruct(
      codUnidade: codUnidade,
      unidade: unidade,
      codColaborador: codColaborador,
      colaborador: colaborador,
      codEspecialidade: codEspecialidade,
      especialidade: especialidade,
      codProcedimento: codProcedimento,
      procedimento: procedimento,
      codConvenio: codConvenio,
      convenio: convenio,
      codConvenioTipo: codConvenioTipo,
      convenioTipo: convenioTipo,
      preco: preco,
    );
