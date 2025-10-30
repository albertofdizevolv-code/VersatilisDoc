// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgendamentoExameStruct extends BaseStruct {
  AgendamentoExameStruct({
    int? codAgendamento,
    String? data,
    int? codEspecialidade,
    String? especialidade,
    int? codProcedimento,
    String? procedimento,
    int? codConvenio,
    String? convenio,
    int? codPlano,
    String? plano,
  })  : _codAgendamento = codAgendamento,
        _data = data,
        _codEspecialidade = codEspecialidade,
        _especialidade = especialidade,
        _codProcedimento = codProcedimento,
        _procedimento = procedimento,
        _codConvenio = codConvenio,
        _convenio = convenio,
        _codPlano = codPlano,
        _plano = plano;

  // "CodAgendamento" field.
  int? _codAgendamento;
  int get codAgendamento => _codAgendamento ?? 0;
  set codAgendamento(int? val) => _codAgendamento = val;

  void incrementCodAgendamento(int amount) =>
      codAgendamento = codAgendamento + amount;

  bool hasCodAgendamento() => _codAgendamento != null;

  // "Data" field.
  String? _data;
  String get data => _data ?? '';
  set data(String? val) => _data = val;

  bool hasData() => _data != null;

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

  static AgendamentoExameStruct fromMap(Map<String, dynamic> data) =>
      AgendamentoExameStruct(
        codAgendamento: castToType<int>(data['CodAgendamento']),
        data: data['Data'] as String?,
        codEspecialidade: castToType<int>(data['CodEspecialidade']),
        especialidade: data['Especialidade'] as String?,
        codProcedimento: castToType<int>(data['CodProcedimento']),
        procedimento: data['Procedimento'] as String?,
        codConvenio: castToType<int>(data['CodConvenio']),
        convenio: data['Convenio'] as String?,
        codPlano: castToType<int>(data['CodPlano']),
        plano: data['Plano'] as String?,
      );

  static AgendamentoExameStruct? maybeFromMap(dynamic data) => data is Map
      ? AgendamentoExameStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodAgendamento': _codAgendamento,
        'Data': _data,
        'CodEspecialidade': _codEspecialidade,
        'Especialidade': _especialidade,
        'CodProcedimento': _codProcedimento,
        'Procedimento': _procedimento,
        'CodConvenio': _codConvenio,
        'Convenio': _convenio,
        'CodPlano': _codPlano,
        'Plano': _plano,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodAgendamento': serializeParam(
          _codAgendamento,
          ParamType.int,
        ),
        'Data': serializeParam(
          _data,
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
        'CodPlano': serializeParam(
          _codPlano,
          ParamType.int,
        ),
        'Plano': serializeParam(
          _plano,
          ParamType.String,
        ),
      }.withoutNulls;

  static AgendamentoExameStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AgendamentoExameStruct(
        codAgendamento: deserializeParam(
          data['CodAgendamento'],
          ParamType.int,
          false,
        ),
        data: deserializeParam(
          data['Data'],
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
      );

  @override
  String toString() => 'AgendamentoExameStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AgendamentoExameStruct &&
        codAgendamento == other.codAgendamento &&
        data == other.data &&
        codEspecialidade == other.codEspecialidade &&
        especialidade == other.especialidade &&
        codProcedimento == other.codProcedimento &&
        procedimento == other.procedimento &&
        codConvenio == other.codConvenio &&
        convenio == other.convenio &&
        codPlano == other.codPlano &&
        plano == other.plano;
  }

  @override
  int get hashCode => const ListEquality().hash([
        codAgendamento,
        data,
        codEspecialidade,
        especialidade,
        codProcedimento,
        procedimento,
        codConvenio,
        convenio,
        codPlano,
        plano
      ]);
}

AgendamentoExameStruct createAgendamentoExameStruct({
  int? codAgendamento,
  String? data,
  int? codEspecialidade,
  String? especialidade,
  int? codProcedimento,
  String? procedimento,
  int? codConvenio,
  String? convenio,
  int? codPlano,
  String? plano,
}) =>
    AgendamentoExameStruct(
      codAgendamento: codAgendamento,
      data: data,
      codEspecialidade: codEspecialidade,
      especialidade: especialidade,
      codProcedimento: codProcedimento,
      procedimento: procedimento,
      codConvenio: codConvenio,
      convenio: convenio,
      codPlano: codPlano,
      plano: plano,
    );
