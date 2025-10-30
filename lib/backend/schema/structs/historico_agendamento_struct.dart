// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistoricoAgendamentoStruct extends BaseStruct {
  HistoricoAgendamentoStruct({
    String? especialidade,
    String? procedimento,
    String? unidade,
    String? medico,
    int? codConvenio,
    String? convenio,
    int? codPlano,
    String? plano,
    String? data,
    String? hora,
    String? status,
    int? codHorario,
    int? codAgendamento,
    bool? bitTelemedicina,
    bool? agendada,
    bool? confirmada,
    bool? aceita,
    bool? cancelada,
  })  : _especialidade = especialidade,
        _procedimento = procedimento,
        _unidade = unidade,
        _medico = medico,
        _codConvenio = codConvenio,
        _convenio = convenio,
        _codPlano = codPlano,
        _plano = plano,
        _data = data,
        _hora = hora,
        _status = status,
        _codHorario = codHorario,
        _codAgendamento = codAgendamento,
        _bitTelemedicina = bitTelemedicina,
        _agendada = agendada,
        _confirmada = confirmada,
        _aceita = aceita,
        _cancelada = cancelada;

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

  // "Unidade" field.
  String? _unidade;
  String get unidade => _unidade ?? '';
  set unidade(String? val) => _unidade = val;

  bool hasUnidade() => _unidade != null;

  // "Medico" field.
  String? _medico;
  String get medico => _medico ?? '';
  set medico(String? val) => _medico = val;

  bool hasMedico() => _medico != null;

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

  // "BitTelemedicina" field.
  bool? _bitTelemedicina;
  bool get bitTelemedicina => _bitTelemedicina ?? false;
  set bitTelemedicina(bool? val) => _bitTelemedicina = val;

  bool hasBitTelemedicina() => _bitTelemedicina != null;

  // "Agendada" field.
  bool? _agendada;
  bool get agendada => _agendada ?? false;
  set agendada(bool? val) => _agendada = val;

  bool hasAgendada() => _agendada != null;

  // "Confirmada" field.
  bool? _confirmada;
  bool get confirmada => _confirmada ?? false;
  set confirmada(bool? val) => _confirmada = val;

  bool hasConfirmada() => _confirmada != null;

  // "Aceita" field.
  bool? _aceita;
  bool get aceita => _aceita ?? false;
  set aceita(bool? val) => _aceita = val;

  bool hasAceita() => _aceita != null;

  // "Cancelada" field.
  bool? _cancelada;
  bool get cancelada => _cancelada ?? false;
  set cancelada(bool? val) => _cancelada = val;

  bool hasCancelada() => _cancelada != null;

  static HistoricoAgendamentoStruct fromMap(Map<String, dynamic> data) =>
      HistoricoAgendamentoStruct(
        especialidade: data['Especialidade'] as String?,
        procedimento: data['Procedimento'] as String?,
        unidade: data['Unidade'] as String?,
        medico: data['Medico'] as String?,
        codConvenio: castToType<int>(data['CodConvenio']),
        convenio: data['Convenio'] as String?,
        codPlano: castToType<int>(data['CodPlano']),
        plano: data['Plano'] as String?,
        data: data['Data'] as String?,
        hora: data['Hora'] as String?,
        status: data['Status'] as String?,
        codHorario: castToType<int>(data['CodHorario']),
        codAgendamento: castToType<int>(data['CodAgendamento']),
        bitTelemedicina: data['BitTelemedicina'] as bool?,
        agendada: data['Agendada'] as bool?,
        confirmada: data['Confirmada'] as bool?,
        aceita: data['Aceita'] as bool?,
        cancelada: data['Cancelada'] as bool?,
      );

  static HistoricoAgendamentoStruct? maybeFromMap(dynamic data) => data is Map
      ? HistoricoAgendamentoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Especialidade': _especialidade,
        'Procedimento': _procedimento,
        'Unidade': _unidade,
        'Medico': _medico,
        'CodConvenio': _codConvenio,
        'Convenio': _convenio,
        'CodPlano': _codPlano,
        'Plano': _plano,
        'Data': _data,
        'Hora': _hora,
        'Status': _status,
        'CodHorario': _codHorario,
        'CodAgendamento': _codAgendamento,
        'BitTelemedicina': _bitTelemedicina,
        'Agendada': _agendada,
        'Confirmada': _confirmada,
        'Aceita': _aceita,
        'Cancelada': _cancelada,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Especialidade': serializeParam(
          _especialidade,
          ParamType.String,
        ),
        'Procedimento': serializeParam(
          _procedimento,
          ParamType.String,
        ),
        'Unidade': serializeParam(
          _unidade,
          ParamType.String,
        ),
        'Medico': serializeParam(
          _medico,
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
        'BitTelemedicina': serializeParam(
          _bitTelemedicina,
          ParamType.bool,
        ),
        'Agendada': serializeParam(
          _agendada,
          ParamType.bool,
        ),
        'Confirmada': serializeParam(
          _confirmada,
          ParamType.bool,
        ),
        'Aceita': serializeParam(
          _aceita,
          ParamType.bool,
        ),
        'Cancelada': serializeParam(
          _cancelada,
          ParamType.bool,
        ),
      }.withoutNulls;

  static HistoricoAgendamentoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      HistoricoAgendamentoStruct(
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
        unidade: deserializeParam(
          data['Unidade'],
          ParamType.String,
          false,
        ),
        medico: deserializeParam(
          data['Medico'],
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
        bitTelemedicina: deserializeParam(
          data['BitTelemedicina'],
          ParamType.bool,
          false,
        ),
        agendada: deserializeParam(
          data['Agendada'],
          ParamType.bool,
          false,
        ),
        confirmada: deserializeParam(
          data['Confirmada'],
          ParamType.bool,
          false,
        ),
        aceita: deserializeParam(
          data['Aceita'],
          ParamType.bool,
          false,
        ),
        cancelada: deserializeParam(
          data['Cancelada'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'HistoricoAgendamentoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HistoricoAgendamentoStruct &&
        especialidade == other.especialidade &&
        procedimento == other.procedimento &&
        unidade == other.unidade &&
        medico == other.medico &&
        codConvenio == other.codConvenio &&
        convenio == other.convenio &&
        codPlano == other.codPlano &&
        plano == other.plano &&
        data == other.data &&
        hora == other.hora &&
        status == other.status &&
        codHorario == other.codHorario &&
        codAgendamento == other.codAgendamento &&
        bitTelemedicina == other.bitTelemedicina &&
        agendada == other.agendada &&
        confirmada == other.confirmada &&
        aceita == other.aceita &&
        cancelada == other.cancelada;
  }

  @override
  int get hashCode => const ListEquality().hash([
        especialidade,
        procedimento,
        unidade,
        medico,
        codConvenio,
        convenio,
        codPlano,
        plano,
        data,
        hora,
        status,
        codHorario,
        codAgendamento,
        bitTelemedicina,
        agendada,
        confirmada,
        aceita,
        cancelada
      ]);
}

HistoricoAgendamentoStruct createHistoricoAgendamentoStruct({
  String? especialidade,
  String? procedimento,
  String? unidade,
  String? medico,
  int? codConvenio,
  String? convenio,
  int? codPlano,
  String? plano,
  String? data,
  String? hora,
  String? status,
  int? codHorario,
  int? codAgendamento,
  bool? bitTelemedicina,
  bool? agendada,
  bool? confirmada,
  bool? aceita,
  bool? cancelada,
}) =>
    HistoricoAgendamentoStruct(
      especialidade: especialidade,
      procedimento: procedimento,
      unidade: unidade,
      medico: medico,
      codConvenio: codConvenio,
      convenio: convenio,
      codPlano: codPlano,
      plano: plano,
      data: data,
      hora: hora,
      status: status,
      codHorario: codHorario,
      codAgendamento: codAgendamento,
      bitTelemedicina: bitTelemedicina,
      agendada: agendada,
      confirmada: confirmada,
      aceita: aceita,
      cancelada: cancelada,
    );
