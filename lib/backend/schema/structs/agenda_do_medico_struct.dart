// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgendaDoMedicoStruct extends BaseStruct {
  AgendaDoMedicoStruct({
    int? codUsuario,
    String? paciente,
    String? unidade,
    String? especialidade,
    String? procedimento,
    int? codColaborador,
    String? colaborador,
    int? codConvenio,
    String? convenio,
    int? codPlano,
    String? plano,
    String? data,
    String? hora,
    String? status,
    int? codHorario,
    int? codAgendamento,
  })  : _codUsuario = codUsuario,
        _paciente = paciente,
        _unidade = unidade,
        _especialidade = especialidade,
        _procedimento = procedimento,
        _codColaborador = codColaborador,
        _colaborador = colaborador,
        _codConvenio = codConvenio,
        _convenio = convenio,
        _codPlano = codPlano,
        _plano = plano,
        _data = data,
        _hora = hora,
        _status = status,
        _codHorario = codHorario,
        _codAgendamento = codAgendamento;

  // "CodUsuario" field.
  int? _codUsuario;
  int get codUsuario => _codUsuario ?? 0;
  set codUsuario(int? val) => _codUsuario = val;

  void incrementCodUsuario(int amount) => codUsuario = codUsuario + amount;

  bool hasCodUsuario() => _codUsuario != null;

  // "Paciente" field.
  String? _paciente;
  String get paciente => _paciente ?? '';
  set paciente(String? val) => _paciente = val;

  bool hasPaciente() => _paciente != null;

  // "Unidade" field.
  String? _unidade;
  String get unidade => _unidade ?? '';
  set unidade(String? val) => _unidade = val;

  bool hasUnidade() => _unidade != null;

  // "Especialidade" field.
  String? _especialidade;
  String get especialidade => _especialidade ?? '';
  set especialidade(String? val) => _especialidade = val;

  bool hasEspecialidade() => _especialidade != null;

  // "Procedimento" field.
  String? _procedimento;
  String get procedimento => _procedimento ?? '';
  set procedimento(String? val) => _procedimento = val;

  bool hasProcedimento() => _procedimento != null;

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

  // "Data" field.
  String? _data;
  String get data => _data ?? '';
  set data(String? val) => _data = val;

  bool hasData() => _data != null;

  // "Hora" field.
  String? _hora;
  String get hora => _hora ?? '';
  set hora(String? val) => _hora = val;

  bool hasHora() => _hora != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "CodHorario" field.
  int? _codHorario;
  int get codHorario => _codHorario ?? 0;
  set codHorario(int? val) => _codHorario = val;

  void incrementCodHorario(int amount) => codHorario = codHorario + amount;

  bool hasCodHorario() => _codHorario != null;

  // "CodAgendamento" field.
  int? _codAgendamento;
  int get codAgendamento => _codAgendamento ?? 0;
  set codAgendamento(int? val) => _codAgendamento = val;

  void incrementCodAgendamento(int amount) =>
      codAgendamento = codAgendamento + amount;

  bool hasCodAgendamento() => _codAgendamento != null;

  static AgendaDoMedicoStruct fromMap(Map<String, dynamic> data) =>
      AgendaDoMedicoStruct(
        codUsuario: castToType<int>(data['CodUsuario']),
        paciente: data['Paciente'] as String?,
        unidade: data['Unidade'] as String?,
        especialidade: data['Especialidade'] as String?,
        procedimento: data['Procedimento'] as String?,
        codColaborador: castToType<int>(data['CodColaborador']),
        colaborador: data['Colaborador'] as String?,
        codConvenio: castToType<int>(data['CodConvenio']),
        convenio: data['Convenio'] as String?,
        codPlano: castToType<int>(data['CodPlano']),
        plano: data['Plano'] as String?,
        data: data['Data'] as String?,
        hora: data['Hora'] as String?,
        status: data['Status'] as String?,
        codHorario: castToType<int>(data['CodHorario']),
        codAgendamento: castToType<int>(data['CodAgendamento']),
      );

  static AgendaDoMedicoStruct? maybeFromMap(dynamic data) => data is Map
      ? AgendaDoMedicoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodUsuario': _codUsuario,
        'Paciente': _paciente,
        'Unidade': _unidade,
        'Especialidade': _especialidade,
        'Procedimento': _procedimento,
        'CodColaborador': _codColaborador,
        'Colaborador': _colaborador,
        'CodConvenio': _codConvenio,
        'Convenio': _convenio,
        'CodPlano': _codPlano,
        'Plano': _plano,
        'Data': _data,
        'Hora': _hora,
        'Status': _status,
        'CodHorario': _codHorario,
        'CodAgendamento': _codAgendamento,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodUsuario': serializeParam(
          _codUsuario,
          ParamType.int,
        ),
        'Paciente': serializeParam(
          _paciente,
          ParamType.String,
        ),
        'Unidade': serializeParam(
          _unidade,
          ParamType.String,
        ),
        'Especialidade': serializeParam(
          _especialidade,
          ParamType.String,
        ),
        'Procedimento': serializeParam(
          _procedimento,
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
        'Data': serializeParam(
          _data,
          ParamType.String,
        ),
        'Hora': serializeParam(
          _hora,
          ParamType.String,
        ),
        'Status': serializeParam(
          _status,
          ParamType.String,
        ),
        'CodHorario': serializeParam(
          _codHorario,
          ParamType.int,
        ),
        'CodAgendamento': serializeParam(
          _codAgendamento,
          ParamType.int,
        ),
      }.withoutNulls;

  static AgendaDoMedicoStruct fromSerializableMap(Map<String, dynamic> data) =>
      AgendaDoMedicoStruct(
        codUsuario: deserializeParam(
          data['CodUsuario'],
          ParamType.int,
          false,
        ),
        paciente: deserializeParam(
          data['Paciente'],
          ParamType.String,
          false,
        ),
        unidade: deserializeParam(
          data['Unidade'],
          ParamType.String,
          false,
        ),
        especialidade: deserializeParam(
          data['Especialidade'],
          ParamType.String,
          false,
        ),
        procedimento: deserializeParam(
          data['Procedimento'],
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
        data: deserializeParam(
          data['Data'],
          ParamType.String,
          false,
        ),
        hora: deserializeParam(
          data['Hora'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['Status'],
          ParamType.String,
          false,
        ),
        codHorario: deserializeParam(
          data['CodHorario'],
          ParamType.int,
          false,
        ),
        codAgendamento: deserializeParam(
          data['CodAgendamento'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AgendaDoMedicoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AgendaDoMedicoStruct &&
        codUsuario == other.codUsuario &&
        paciente == other.paciente &&
        unidade == other.unidade &&
        especialidade == other.especialidade &&
        procedimento == other.procedimento &&
        codColaborador == other.codColaborador &&
        colaborador == other.colaborador &&
        codConvenio == other.codConvenio &&
        convenio == other.convenio &&
        codPlano == other.codPlano &&
        plano == other.plano &&
        data == other.data &&
        hora == other.hora &&
        status == other.status &&
        codHorario == other.codHorario &&
        codAgendamento == other.codAgendamento;
  }

  @override
  int get hashCode => const ListEquality().hash([
        codUsuario,
        paciente,
        unidade,
        especialidade,
        procedimento,
        codColaborador,
        colaborador,
        codConvenio,
        convenio,
        codPlano,
        plano,
        data,
        hora,
        status,
        codHorario,
        codAgendamento
      ]);
}

AgendaDoMedicoStruct createAgendaDoMedicoStruct({
  int? codUsuario,
  String? paciente,
  String? unidade,
  String? especialidade,
  String? procedimento,
  int? codColaborador,
  String? colaborador,
  int? codConvenio,
  String? convenio,
  int? codPlano,
  String? plano,
  String? data,
  String? hora,
  String? status,
  int? codHorario,
  int? codAgendamento,
}) =>
    AgendaDoMedicoStruct(
      codUsuario: codUsuario,
      paciente: paciente,
      unidade: unidade,
      especialidade: especialidade,
      procedimento: procedimento,
      codColaborador: codColaborador,
      colaborador: colaborador,
      codConvenio: codConvenio,
      convenio: convenio,
      codPlano: codPlano,
      plano: plano,
      data: data,
      hora: hora,
      status: status,
      codHorario: codHorario,
      codAgendamento: codAgendamento,
    );
