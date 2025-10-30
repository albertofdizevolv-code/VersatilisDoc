// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgendamentoStruct extends BaseStruct {
  AgendamentoStruct({
    int? codAgendamento,
    int? codColaborador,
    String? nomeColaborador,
    String? dataAgendamento,
    String? dataConfirmacao,
    int? codEspecialidade,
    String? nomeEspecialidade,
    int? codProcedimento,
    String? nomeProcedimento,
    int? codConvenio,
    String? convenio,
    int? codPlano,
    String? plano,
    int? codigoVenda,
  })  : _codAgendamento = codAgendamento,
        _codColaborador = codColaborador,
        _nomeColaborador = nomeColaborador,
        _dataAgendamento = dataAgendamento,
        _dataConfirmacao = dataConfirmacao,
        _codEspecialidade = codEspecialidade,
        _nomeEspecialidade = nomeEspecialidade,
        _codProcedimento = codProcedimento,
        _nomeProcedimento = nomeProcedimento,
        _codConvenio = codConvenio,
        _convenio = convenio,
        _codPlano = codPlano,
        _plano = plano,
        _codigoVenda = codigoVenda;

  // "CodAgendamento" field.
  int? _codAgendamento;
  int get codAgendamento => _codAgendamento ?? 0;
  set codAgendamento(int? val) => _codAgendamento = val;

  void incrementCodAgendamento(int amount) =>
      codAgendamento = codAgendamento + amount;

  bool hasCodAgendamento() => _codAgendamento != null;

  // "CodColaborador" field.
  int? _codColaborador;
  int get codColaborador => _codColaborador ?? 0;
  set codColaborador(int? val) => _codColaborador = val;

  void incrementCodColaborador(int amount) =>
      codColaborador = codColaborador + amount;

  bool hasCodColaborador() => _codColaborador != null;

  // "NomeColaborador" field.
  String? _nomeColaborador;
  String get nomeColaborador => _nomeColaborador ?? '';
  set nomeColaborador(String? val) => _nomeColaborador = val;

  bool hasNomeColaborador() => _nomeColaborador != null;

  // "DataAgendamento" field.
  String? _dataAgendamento;
  String get dataAgendamento => _dataAgendamento ?? '';
  set dataAgendamento(String? val) => _dataAgendamento = val;

  bool hasDataAgendamento() => _dataAgendamento != null;

  // "DataConfirmacao" field.
  String? _dataConfirmacao;
  String get dataConfirmacao => _dataConfirmacao ?? '';
  set dataConfirmacao(String? val) => _dataConfirmacao = val;

  bool hasDataConfirmacao() => _dataConfirmacao != null;

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

  // "CodPlano" field.
  int? _codPlano;
  int get codPlano => _codPlano ?? 0;
  set codPlano(int? val) => _codPlano = val;

  void incrementCodPlano(int amount) => codPlano = codPlano + amount;

  bool hasCodPlano() => _codPlano != null;

  // "Plano" field.
  String? _plano;
  String get plano => _plano ?? '';
  set plano(String? val) => _plano = val;

  bool hasPlano() => _plano != null;

  // "CodigoVenda" field.
  int? _codigoVenda;
  int get codigoVenda => _codigoVenda ?? 0;
  set codigoVenda(int? val) => _codigoVenda = val;

  void incrementCodigoVenda(int amount) => codigoVenda = codigoVenda + amount;

  bool hasCodigoVenda() => _codigoVenda != null;

  static AgendamentoStruct fromMap(Map<String, dynamic> data) =>
      AgendamentoStruct(
        codAgendamento: castToType<int>(data['CodAgendamento']),
        codColaborador: castToType<int>(data['CodColaborador']),
        nomeColaborador: data['NomeColaborador'] as String?,
        dataAgendamento: data['DataAgendamento'] as String?,
        dataConfirmacao: data['DataConfirmacao'] as String?,
        codEspecialidade: castToType<int>(data['CodEspecialidade']),
        nomeEspecialidade: data['NomeEspecialidade'] as String?,
        codProcedimento: castToType<int>(data['CodProcedimento']),
        nomeProcedimento: data['NomeProcedimento'] as String?,
        codConvenio: castToType<int>(data['CodConvenio']),
        convenio: data['Convenio'] as String?,
        codPlano: castToType<int>(data['CodPlano']),
        plano: data['Plano'] as String?,
        codigoVenda: castToType<int>(data['CodigoVenda']),
      );

  static AgendamentoStruct? maybeFromMap(dynamic data) => data is Map
      ? AgendamentoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodAgendamento': _codAgendamento,
        'CodColaborador': _codColaborador,
        'NomeColaborador': _nomeColaborador,
        'DataAgendamento': _dataAgendamento,
        'DataConfirmacao': _dataConfirmacao,
        'CodEspecialidade': _codEspecialidade,
        'NomeEspecialidade': _nomeEspecialidade,
        'CodProcedimento': _codProcedimento,
        'NomeProcedimento': _nomeProcedimento,
        'CodConvenio': _codConvenio,
        'Convenio': _convenio,
        'CodPlano': _codPlano,
        'Plano': _plano,
        'CodigoVenda': _codigoVenda,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodAgendamento': serializeParam(
          _codAgendamento,
          ParamType.int,
        ),
        'CodColaborador': serializeParam(
          _codColaborador,
          ParamType.int,
        ),
        'NomeColaborador': serializeParam(
          _nomeColaborador,
          ParamType.String,
        ),
        'DataAgendamento': serializeParam(
          _dataAgendamento,
          ParamType.String,
        ),
        'DataConfirmacao': serializeParam(
          _dataConfirmacao,
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
        'CodProcedimento': serializeParam(
          _codProcedimento,
          ParamType.int,
        ),
        'NomeProcedimento': serializeParam(
          _nomeProcedimento,
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
        'CodPlano': serializeParam(
          _codPlano,
          ParamType.int,
        ),
        'Plano': serializeParam(
          _plano,
          ParamType.String,
        ),
        'CodigoVenda': serializeParam(
          _codigoVenda,
          ParamType.int,
        ),
      }.withoutNulls;

  static AgendamentoStruct fromSerializableMap(Map<String, dynamic> data) =>
      AgendamentoStruct(
        codAgendamento: deserializeParam(
          data['CodAgendamento'],
          ParamType.int,
          false,
        ),
        codColaborador: deserializeParam(
          data['CodColaborador'],
          ParamType.int,
          false,
        ),
        nomeColaborador: deserializeParam(
          data['NomeColaborador'],
          ParamType.String,
          false,
        ),
        dataAgendamento: deserializeParam(
          data['DataAgendamento'],
          ParamType.String,
          false,
        ),
        dataConfirmacao: deserializeParam(
          data['DataConfirmacao'],
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
        codPlano: deserializeParam(
          data['CodPlano'],
          ParamType.int,
          false,
        ),
        plano: deserializeParam(
          data['Plano'],
          ParamType.String,
          false,
        ),
        codigoVenda: deserializeParam(
          data['CodigoVenda'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AgendamentoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AgendamentoStruct &&
        codAgendamento == other.codAgendamento &&
        codColaborador == other.codColaborador &&
        nomeColaborador == other.nomeColaborador &&
        dataAgendamento == other.dataAgendamento &&
        dataConfirmacao == other.dataConfirmacao &&
        codEspecialidade == other.codEspecialidade &&
        nomeEspecialidade == other.nomeEspecialidade &&
        codProcedimento == other.codProcedimento &&
        nomeProcedimento == other.nomeProcedimento &&
        codConvenio == other.codConvenio &&
        convenio == other.convenio &&
        codPlano == other.codPlano &&
        plano == other.plano &&
        codigoVenda == other.codigoVenda;
  }

  @override
  int get hashCode => const ListEquality().hash([
        codAgendamento,
        codColaborador,
        nomeColaborador,
        dataAgendamento,
        dataConfirmacao,
        codEspecialidade,
        nomeEspecialidade,
        codProcedimento,
        nomeProcedimento,
        codConvenio,
        convenio,
        codPlano,
        plano,
        codigoVenda
      ]);
}

AgendamentoStruct createAgendamentoStruct({
  int? codAgendamento,
  int? codColaborador,
  String? nomeColaborador,
  String? dataAgendamento,
  String? dataConfirmacao,
  int? codEspecialidade,
  String? nomeEspecialidade,
  int? codProcedimento,
  String? nomeProcedimento,
  int? codConvenio,
  String? convenio,
  int? codPlano,
  String? plano,
  int? codigoVenda,
}) =>
    AgendamentoStruct(
      codAgendamento: codAgendamento,
      codColaborador: codColaborador,
      nomeColaborador: nomeColaborador,
      dataAgendamento: dataAgendamento,
      dataConfirmacao: dataConfirmacao,
      codEspecialidade: codEspecialidade,
      nomeEspecialidade: nomeEspecialidade,
      codProcedimento: codProcedimento,
      nomeProcedimento: nomeProcedimento,
      codConvenio: codConvenio,
      convenio: convenio,
      codPlano: codPlano,
      plano: plano,
      codigoVenda: codigoVenda,
    );
