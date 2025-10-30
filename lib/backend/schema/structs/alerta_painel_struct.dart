// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlertaPainelStruct extends BaseStruct {
  AlertaPainelStruct({
    int? codAgendamento,
    int? codUsuario,
    int? codConvenio,
    int? codPlano,
    int? codEspecialidade,
    int? codProcedimento,
    String? paciente,
    String? especialidade,
    String? procedimento,
    String? convenio,
    String? hora,
    String? tempoEspera,
    String? tempoConsulta,
    String? tempoTotal,
    bool? bitConsulta,
    bool? bitProcedimento,
    bool? bitRetorno,
    bool? bitPreferencial,
    bool? bitHorarioVago,
    bool? bitNaEspera,
    bool? bitJaAtendido,
    bool? bitNaEsperaPosExames,
    bool? bitEmAtendimento,
    bool? bitBotaoChamar,
    bool? bitBotaoProntuario,
    bool? bitBotaoAdendo,
  })  : _codAgendamento = codAgendamento,
        _codUsuario = codUsuario,
        _codConvenio = codConvenio,
        _codPlano = codPlano,
        _codEspecialidade = codEspecialidade,
        _codProcedimento = codProcedimento,
        _paciente = paciente,
        _especialidade = especialidade,
        _procedimento = procedimento,
        _convenio = convenio,
        _hora = hora,
        _tempoEspera = tempoEspera,
        _tempoConsulta = tempoConsulta,
        _tempoTotal = tempoTotal,
        _bitConsulta = bitConsulta,
        _bitProcedimento = bitProcedimento,
        _bitRetorno = bitRetorno,
        _bitPreferencial = bitPreferencial,
        _bitHorarioVago = bitHorarioVago,
        _bitNaEspera = bitNaEspera,
        _bitJaAtendido = bitJaAtendido,
        _bitNaEsperaPosExames = bitNaEsperaPosExames,
        _bitEmAtendimento = bitEmAtendimento,
        _bitBotaoChamar = bitBotaoChamar,
        _bitBotaoProntuario = bitBotaoProntuario,
        _bitBotaoAdendo = bitBotaoAdendo;

  // "CodAgendamento" field.
  int? _codAgendamento;
  int get codAgendamento => _codAgendamento ?? 0;
  set codAgendamento(int? val) => _codAgendamento = val;

  void incrementCodAgendamento(int amount) =>
      codAgendamento = codAgendamento + amount;

  bool hasCodAgendamento() => _codAgendamento != null;

  // "CodUsuario" field.
  int? _codUsuario;
  int get codUsuario => _codUsuario ?? 0;
  set codUsuario(int? val) => _codUsuario = val;

  void incrementCodUsuario(int amount) => codUsuario = codUsuario + amount;

  bool hasCodUsuario() => _codUsuario != null;

  // "CodConvenio" field.
  int? _codConvenio;
  int get codConvenio => _codConvenio ?? 0;
  set codConvenio(int? val) => _codConvenio = val;

  void incrementCodConvenio(int amount) => codConvenio = codConvenio + amount;

  bool hasCodConvenio() => _codConvenio != null;

  // "CodPlano" field.
  int? _codPlano;
  int get codPlano => _codPlano ?? 0;
  set codPlano(int? val) => _codPlano = val;

  void incrementCodPlano(int amount) => codPlano = codPlano + amount;

  bool hasCodPlano() => _codPlano != null;

  // "CodEspecialidade" field.
  int? _codEspecialidade;
  int get codEspecialidade => _codEspecialidade ?? 0;
  set codEspecialidade(int? val) => _codEspecialidade = val;

  void incrementCodEspecialidade(int amount) =>
      codEspecialidade = codEspecialidade + amount;

  bool hasCodEspecialidade() => _codEspecialidade != null;

  // "CodProcedimento" field.
  int? _codProcedimento;
  int get codProcedimento => _codProcedimento ?? 0;
  set codProcedimento(int? val) => _codProcedimento = val;

  void incrementCodProcedimento(int amount) =>
      codProcedimento = codProcedimento + amount;

  bool hasCodProcedimento() => _codProcedimento != null;

  // "Paciente" field.
  String? _paciente;
  String get paciente => _paciente ?? '';
  set paciente(String? val) => _paciente = val;

  bool hasPaciente() => _paciente != null;

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

  // "Convenio" field.
  String? _convenio;
  String get convenio => _convenio ?? '';
  set convenio(String? val) => _convenio = val;

  bool hasConvenio() => _convenio != null;

  // "Hora" field.
  String? _hora;
  String get hora => _hora ?? '';
  set hora(String? val) => _hora = val;

  bool hasHora() => _hora != null;

  // "TempoEspera" field.
  String? _tempoEspera;
  String get tempoEspera => _tempoEspera ?? '';
  set tempoEspera(String? val) => _tempoEspera = val;

  bool hasTempoEspera() => _tempoEspera != null;

  // "TempoConsulta" field.
  String? _tempoConsulta;
  String get tempoConsulta => _tempoConsulta ?? '';
  set tempoConsulta(String? val) => _tempoConsulta = val;

  bool hasTempoConsulta() => _tempoConsulta != null;

  // "TempoTotal" field.
  String? _tempoTotal;
  String get tempoTotal => _tempoTotal ?? '';
  set tempoTotal(String? val) => _tempoTotal = val;

  bool hasTempoTotal() => _tempoTotal != null;

  // "BitConsulta" field.
  bool? _bitConsulta;
  bool get bitConsulta => _bitConsulta ?? false;
  set bitConsulta(bool? val) => _bitConsulta = val;

  bool hasBitConsulta() => _bitConsulta != null;

  // "BitProcedimento" field.
  bool? _bitProcedimento;
  bool get bitProcedimento => _bitProcedimento ?? false;
  set bitProcedimento(bool? val) => _bitProcedimento = val;

  bool hasBitProcedimento() => _bitProcedimento != null;

  // "BitRetorno" field.
  bool? _bitRetorno;
  bool get bitRetorno => _bitRetorno ?? false;
  set bitRetorno(bool? val) => _bitRetorno = val;

  bool hasBitRetorno() => _bitRetorno != null;

  // "BitPreferencial" field.
  bool? _bitPreferencial;
  bool get bitPreferencial => _bitPreferencial ?? false;
  set bitPreferencial(bool? val) => _bitPreferencial = val;

  bool hasBitPreferencial() => _bitPreferencial != null;

  // "BitHorarioVago" field.
  bool? _bitHorarioVago;
  bool get bitHorarioVago => _bitHorarioVago ?? false;
  set bitHorarioVago(bool? val) => _bitHorarioVago = val;

  bool hasBitHorarioVago() => _bitHorarioVago != null;

  // "BitNaEspera" field.
  bool? _bitNaEspera;
  bool get bitNaEspera => _bitNaEspera ?? false;
  set bitNaEspera(bool? val) => _bitNaEspera = val;

  bool hasBitNaEspera() => _bitNaEspera != null;

  // "BitJaAtendido" field.
  bool? _bitJaAtendido;
  bool get bitJaAtendido => _bitJaAtendido ?? false;
  set bitJaAtendido(bool? val) => _bitJaAtendido = val;

  bool hasBitJaAtendido() => _bitJaAtendido != null;

  // "BitNaEsperaPosExames" field.
  bool? _bitNaEsperaPosExames;
  bool get bitNaEsperaPosExames => _bitNaEsperaPosExames ?? false;
  set bitNaEsperaPosExames(bool? val) => _bitNaEsperaPosExames = val;

  bool hasBitNaEsperaPosExames() => _bitNaEsperaPosExames != null;

  // "BitEmAtendimento" field.
  bool? _bitEmAtendimento;
  bool get bitEmAtendimento => _bitEmAtendimento ?? false;
  set bitEmAtendimento(bool? val) => _bitEmAtendimento = val;

  bool hasBitEmAtendimento() => _bitEmAtendimento != null;

  // "BitBotaoChamar" field.
  bool? _bitBotaoChamar;
  bool get bitBotaoChamar => _bitBotaoChamar ?? false;
  set bitBotaoChamar(bool? val) => _bitBotaoChamar = val;

  bool hasBitBotaoChamar() => _bitBotaoChamar != null;

  // "BitBotaoProntuario" field.
  bool? _bitBotaoProntuario;
  bool get bitBotaoProntuario => _bitBotaoProntuario ?? false;
  set bitBotaoProntuario(bool? val) => _bitBotaoProntuario = val;

  bool hasBitBotaoProntuario() => _bitBotaoProntuario != null;

  // "BitBotaoAdendo" field.
  bool? _bitBotaoAdendo;
  bool get bitBotaoAdendo => _bitBotaoAdendo ?? false;
  set bitBotaoAdendo(bool? val) => _bitBotaoAdendo = val;

  bool hasBitBotaoAdendo() => _bitBotaoAdendo != null;

  static AlertaPainelStruct fromMap(Map<String, dynamic> data) =>
      AlertaPainelStruct(
        codAgendamento: castToType<int>(data['CodAgendamento']),
        codUsuario: castToType<int>(data['CodUsuario']),
        codConvenio: castToType<int>(data['CodConvenio']),
        codPlano: castToType<int>(data['CodPlano']),
        codEspecialidade: castToType<int>(data['CodEspecialidade']),
        codProcedimento: castToType<int>(data['CodProcedimento']),
        paciente: data['Paciente'] as String?,
        especialidade: data['Especialidade'] as String?,
        procedimento: data['Procedimento'] as String?,
        convenio: data['Convenio'] as String?,
        hora: data['Hora'] as String?,
        tempoEspera: data['TempoEspera'] as String?,
        tempoConsulta: data['TempoConsulta'] as String?,
        tempoTotal: data['TempoTotal'] as String?,
        bitConsulta: data['BitConsulta'] as bool?,
        bitProcedimento: data['BitProcedimento'] as bool?,
        bitRetorno: data['BitRetorno'] as bool?,
        bitPreferencial: data['BitPreferencial'] as bool?,
        bitHorarioVago: data['BitHorarioVago'] as bool?,
        bitNaEspera: data['BitNaEspera'] as bool?,
        bitJaAtendido: data['BitJaAtendido'] as bool?,
        bitNaEsperaPosExames: data['BitNaEsperaPosExames'] as bool?,
        bitEmAtendimento: data['BitEmAtendimento'] as bool?,
        bitBotaoChamar: data['BitBotaoChamar'] as bool?,
        bitBotaoProntuario: data['BitBotaoProntuario'] as bool?,
        bitBotaoAdendo: data['BitBotaoAdendo'] as bool?,
      );

  static AlertaPainelStruct? maybeFromMap(dynamic data) => data is Map
      ? AlertaPainelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodAgendamento': _codAgendamento,
        'CodUsuario': _codUsuario,
        'CodConvenio': _codConvenio,
        'CodPlano': _codPlano,
        'CodEspecialidade': _codEspecialidade,
        'CodProcedimento': _codProcedimento,
        'Paciente': _paciente,
        'Especialidade': _especialidade,
        'Procedimento': _procedimento,
        'Convenio': _convenio,
        'Hora': _hora,
        'TempoEspera': _tempoEspera,
        'TempoConsulta': _tempoConsulta,
        'TempoTotal': _tempoTotal,
        'BitConsulta': _bitConsulta,
        'BitProcedimento': _bitProcedimento,
        'BitRetorno': _bitRetorno,
        'BitPreferencial': _bitPreferencial,
        'BitHorarioVago': _bitHorarioVago,
        'BitNaEspera': _bitNaEspera,
        'BitJaAtendido': _bitJaAtendido,
        'BitNaEsperaPosExames': _bitNaEsperaPosExames,
        'BitEmAtendimento': _bitEmAtendimento,
        'BitBotaoChamar': _bitBotaoChamar,
        'BitBotaoProntuario': _bitBotaoProntuario,
        'BitBotaoAdendo': _bitBotaoAdendo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodAgendamento': serializeParam(
          _codAgendamento,
          ParamType.int,
        ),
        'CodUsuario': serializeParam(
          _codUsuario,
          ParamType.int,
        ),
        'CodConvenio': serializeParam(
          _codConvenio,
          ParamType.int,
        ),
        'CodPlano': serializeParam(
          _codPlano,
          ParamType.int,
        ),
        'CodEspecialidade': serializeParam(
          _codEspecialidade,
          ParamType.int,
        ),
        'CodProcedimento': serializeParam(
          _codProcedimento,
          ParamType.int,
        ),
        'Paciente': serializeParam(
          _paciente,
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
        'Convenio': serializeParam(
          _convenio,
          ParamType.String,
        ),
        'Hora': serializeParam(
          _hora,
          ParamType.String,
        ),
        'TempoEspera': serializeParam(
          _tempoEspera,
          ParamType.String,
        ),
        'TempoConsulta': serializeParam(
          _tempoConsulta,
          ParamType.String,
        ),
        'TempoTotal': serializeParam(
          _tempoTotal,
          ParamType.String,
        ),
        'BitConsulta': serializeParam(
          _bitConsulta,
          ParamType.bool,
        ),
        'BitProcedimento': serializeParam(
          _bitProcedimento,
          ParamType.bool,
        ),
        'BitRetorno': serializeParam(
          _bitRetorno,
          ParamType.bool,
        ),
        'BitPreferencial': serializeParam(
          _bitPreferencial,
          ParamType.bool,
        ),
        'BitHorarioVago': serializeParam(
          _bitHorarioVago,
          ParamType.bool,
        ),
        'BitNaEspera': serializeParam(
          _bitNaEspera,
          ParamType.bool,
        ),
        'BitJaAtendido': serializeParam(
          _bitJaAtendido,
          ParamType.bool,
        ),
        'BitNaEsperaPosExames': serializeParam(
          _bitNaEsperaPosExames,
          ParamType.bool,
        ),
        'BitEmAtendimento': serializeParam(
          _bitEmAtendimento,
          ParamType.bool,
        ),
        'BitBotaoChamar': serializeParam(
          _bitBotaoChamar,
          ParamType.bool,
        ),
        'BitBotaoProntuario': serializeParam(
          _bitBotaoProntuario,
          ParamType.bool,
        ),
        'BitBotaoAdendo': serializeParam(
          _bitBotaoAdendo,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AlertaPainelStruct fromSerializableMap(Map<String, dynamic> data) =>
      AlertaPainelStruct(
        codAgendamento: deserializeParam(
          data['CodAgendamento'],
          ParamType.int,
          false,
        ),
        codUsuario: deserializeParam(
          data['CodUsuario'],
          ParamType.int,
          false,
        ),
        codConvenio: deserializeParam(
          data['CodConvenio'],
          ParamType.int,
          false,
        ),
        codPlano: deserializeParam(
          data['CodPlano'],
          ParamType.int,
          false,
        ),
        codEspecialidade: deserializeParam(
          data['CodEspecialidade'],
          ParamType.int,
          false,
        ),
        codProcedimento: deserializeParam(
          data['CodProcedimento'],
          ParamType.int,
          false,
        ),
        paciente: deserializeParam(
          data['Paciente'],
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
        convenio: deserializeParam(
          data['Convenio'],
          ParamType.String,
          false,
        ),
        hora: deserializeParam(
          data['Hora'],
          ParamType.String,
          false,
        ),
        tempoEspera: deserializeParam(
          data['TempoEspera'],
          ParamType.String,
          false,
        ),
        tempoConsulta: deserializeParam(
          data['TempoConsulta'],
          ParamType.String,
          false,
        ),
        tempoTotal: deserializeParam(
          data['TempoTotal'],
          ParamType.String,
          false,
        ),
        bitConsulta: deserializeParam(
          data['BitConsulta'],
          ParamType.bool,
          false,
        ),
        bitProcedimento: deserializeParam(
          data['BitProcedimento'],
          ParamType.bool,
          false,
        ),
        bitRetorno: deserializeParam(
          data['BitRetorno'],
          ParamType.bool,
          false,
        ),
        bitPreferencial: deserializeParam(
          data['BitPreferencial'],
          ParamType.bool,
          false,
        ),
        bitHorarioVago: deserializeParam(
          data['BitHorarioVago'],
          ParamType.bool,
          false,
        ),
        bitNaEspera: deserializeParam(
          data['BitNaEspera'],
          ParamType.bool,
          false,
        ),
        bitJaAtendido: deserializeParam(
          data['BitJaAtendido'],
          ParamType.bool,
          false,
        ),
        bitNaEsperaPosExames: deserializeParam(
          data['BitNaEsperaPosExames'],
          ParamType.bool,
          false,
        ),
        bitEmAtendimento: deserializeParam(
          data['BitEmAtendimento'],
          ParamType.bool,
          false,
        ),
        bitBotaoChamar: deserializeParam(
          data['BitBotaoChamar'],
          ParamType.bool,
          false,
        ),
        bitBotaoProntuario: deserializeParam(
          data['BitBotaoProntuario'],
          ParamType.bool,
          false,
        ),
        bitBotaoAdendo: deserializeParam(
          data['BitBotaoAdendo'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'AlertaPainelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AlertaPainelStruct &&
        codAgendamento == other.codAgendamento &&
        codUsuario == other.codUsuario &&
        codConvenio == other.codConvenio &&
        codPlano == other.codPlano &&
        codEspecialidade == other.codEspecialidade &&
        codProcedimento == other.codProcedimento &&
        paciente == other.paciente &&
        especialidade == other.especialidade &&
        procedimento == other.procedimento &&
        convenio == other.convenio &&
        hora == other.hora &&
        tempoEspera == other.tempoEspera &&
        tempoConsulta == other.tempoConsulta &&
        tempoTotal == other.tempoTotal &&
        bitConsulta == other.bitConsulta &&
        bitProcedimento == other.bitProcedimento &&
        bitRetorno == other.bitRetorno &&
        bitPreferencial == other.bitPreferencial &&
        bitHorarioVago == other.bitHorarioVago &&
        bitNaEspera == other.bitNaEspera &&
        bitJaAtendido == other.bitJaAtendido &&
        bitNaEsperaPosExames == other.bitNaEsperaPosExames &&
        bitEmAtendimento == other.bitEmAtendimento &&
        bitBotaoChamar == other.bitBotaoChamar &&
        bitBotaoProntuario == other.bitBotaoProntuario &&
        bitBotaoAdendo == other.bitBotaoAdendo;
  }

  @override
  int get hashCode => const ListEquality().hash([
        codAgendamento,
        codUsuario,
        codConvenio,
        codPlano,
        codEspecialidade,
        codProcedimento,
        paciente,
        especialidade,
        procedimento,
        convenio,
        hora,
        tempoEspera,
        tempoConsulta,
        tempoTotal,
        bitConsulta,
        bitProcedimento,
        bitRetorno,
        bitPreferencial,
        bitHorarioVago,
        bitNaEspera,
        bitJaAtendido,
        bitNaEsperaPosExames,
        bitEmAtendimento,
        bitBotaoChamar,
        bitBotaoProntuario,
        bitBotaoAdendo
      ]);
}

AlertaPainelStruct createAlertaPainelStruct({
  int? codAgendamento,
  int? codUsuario,
  int? codConvenio,
  int? codPlano,
  int? codEspecialidade,
  int? codProcedimento,
  String? paciente,
  String? especialidade,
  String? procedimento,
  String? convenio,
  String? hora,
  String? tempoEspera,
  String? tempoConsulta,
  String? tempoTotal,
  bool? bitConsulta,
  bool? bitProcedimento,
  bool? bitRetorno,
  bool? bitPreferencial,
  bool? bitHorarioVago,
  bool? bitNaEspera,
  bool? bitJaAtendido,
  bool? bitNaEsperaPosExames,
  bool? bitEmAtendimento,
  bool? bitBotaoChamar,
  bool? bitBotaoProntuario,
  bool? bitBotaoAdendo,
}) =>
    AlertaPainelStruct(
      codAgendamento: codAgendamento,
      codUsuario: codUsuario,
      codConvenio: codConvenio,
      codPlano: codPlano,
      codEspecialidade: codEspecialidade,
      codProcedimento: codProcedimento,
      paciente: paciente,
      especialidade: especialidade,
      procedimento: procedimento,
      convenio: convenio,
      hora: hora,
      tempoEspera: tempoEspera,
      tempoConsulta: tempoConsulta,
      tempoTotal: tempoTotal,
      bitConsulta: bitConsulta,
      bitProcedimento: bitProcedimento,
      bitRetorno: bitRetorno,
      bitPreferencial: bitPreferencial,
      bitHorarioVago: bitHorarioVago,
      bitNaEspera: bitNaEspera,
      bitJaAtendido: bitJaAtendido,
      bitNaEsperaPosExames: bitNaEsperaPosExames,
      bitEmAtendimento: bitEmAtendimento,
      bitBotaoChamar: bitBotaoChamar,
      bitBotaoProntuario: bitBotaoProntuario,
      bitBotaoAdendo: bitBotaoAdendo,
    );
