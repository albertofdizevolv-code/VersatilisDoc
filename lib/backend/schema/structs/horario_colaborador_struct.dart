// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HorarioColaboradorStruct extends BaseStruct {
  HorarioColaboradorStruct({
    int? codHorario,
    String? data,
    String? hora,
    int? codEspecialidade,
    String? nomeEspecialidade,
    bool? permiteConsulta,
    bool? permiteProcedimento,
    List<ProcedimentoHorarioStruct>? procedimentos,
  })  : _codHorario = codHorario,
        _data = data,
        _hora = hora,
        _codEspecialidade = codEspecialidade,
        _nomeEspecialidade = nomeEspecialidade,
        _permiteConsulta = permiteConsulta,
        _permiteProcedimento = permiteProcedimento,
        _procedimentos = procedimentos;

  // "CodHorario" field.
  int? _codHorario;
  int get codHorario => _codHorario ?? 0;
  set codHorario(int? val) => _codHorario = val;

  void incrementCodHorario(int amount) => codHorario = codHorario + amount;

  bool hasCodHorario() => _codHorario != null;

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

  // "PermiteConsulta" field.
  bool? _permiteConsulta;
  bool get permiteConsulta => _permiteConsulta ?? false;
  set permiteConsulta(bool? val) => _permiteConsulta = val;

  bool hasPermiteConsulta() => _permiteConsulta != null;

  // "PermiteProcedimento" field.
  bool? _permiteProcedimento;
  bool get permiteProcedimento => _permiteProcedimento ?? false;
  set permiteProcedimento(bool? val) => _permiteProcedimento = val;

  bool hasPermiteProcedimento() => _permiteProcedimento != null;

  // "Procedimentos" field.
  List<ProcedimentoHorarioStruct>? _procedimentos;
  List<ProcedimentoHorarioStruct> get procedimentos =>
      _procedimentos ?? const [];
  set procedimentos(List<ProcedimentoHorarioStruct>? val) =>
      _procedimentos = val;

  void updateProcedimentos(Function(List<ProcedimentoHorarioStruct>) updateFn) {
    updateFn(_procedimentos ??= []);
  }

  bool hasProcedimentos() => _procedimentos != null;

  static HorarioColaboradorStruct fromMap(Map<String, dynamic> data) =>
      HorarioColaboradorStruct(
        codHorario: castToType<int>(data['CodHorario']),
        data: data['Data'] as String?,
        hora: data['Hora'] as String?,
        codEspecialidade: castToType<int>(data['CodEspecialidade']),
        nomeEspecialidade: data['NomeEspecialidade'] as String?,
        permiteConsulta: data['PermiteConsulta'] as bool?,
        permiteProcedimento: data['PermiteProcedimento'] as bool?,
        procedimentos: getStructList(
          data['Procedimentos'],
          ProcedimentoHorarioStruct.fromMap,
        ),
      );

  static HorarioColaboradorStruct? maybeFromMap(dynamic data) => data is Map
      ? HorarioColaboradorStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodHorario': _codHorario,
        'Data': _data,
        'Hora': _hora,
        'CodEspecialidade': _codEspecialidade,
        'NomeEspecialidade': _nomeEspecialidade,
        'PermiteConsulta': _permiteConsulta,
        'PermiteProcedimento': _permiteProcedimento,
        'Procedimentos': _procedimentos?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodHorario': serializeParam(
          _codHorario,
          ParamType.int,
        ),
        'Data': serializeParam(
          _data,
          ParamType.String,
        ),
        'Hora': serializeParam(
          _hora,
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
        'PermiteConsulta': serializeParam(
          _permiteConsulta,
          ParamType.bool,
        ),
        'PermiteProcedimento': serializeParam(
          _permiteProcedimento,
          ParamType.bool,
        ),
        'Procedimentos': serializeParam(
          _procedimentos,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static HorarioColaboradorStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      HorarioColaboradorStruct(
        codHorario: deserializeParam(
          data['CodHorario'],
          ParamType.int,
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
        permiteConsulta: deserializeParam(
          data['PermiteConsulta'],
          ParamType.bool,
          false,
        ),
        permiteProcedimento: deserializeParam(
          data['PermiteProcedimento'],
          ParamType.bool,
          false,
        ),
        procedimentos: deserializeStructParam<ProcedimentoHorarioStruct>(
          data['Procedimentos'],
          ParamType.DataStruct,
          true,
          structBuilder: ProcedimentoHorarioStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'HorarioColaboradorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is HorarioColaboradorStruct &&
        codHorario == other.codHorario &&
        data == other.data &&
        hora == other.hora &&
        codEspecialidade == other.codEspecialidade &&
        nomeEspecialidade == other.nomeEspecialidade &&
        permiteConsulta == other.permiteConsulta &&
        permiteProcedimento == other.permiteProcedimento &&
        listEquality.equals(procedimentos, other.procedimentos);
  }

  @override
  int get hashCode => const ListEquality().hash([
        codHorario,
        data,
        hora,
        codEspecialidade,
        nomeEspecialidade,
        permiteConsulta,
        permiteProcedimento,
        procedimentos
      ]);
}

HorarioColaboradorStruct createHorarioColaboradorStruct({
  int? codHorario,
  String? data,
  String? hora,
  int? codEspecialidade,
  String? nomeEspecialidade,
  bool? permiteConsulta,
  bool? permiteProcedimento,
}) =>
    HorarioColaboradorStruct(
      codHorario: codHorario,
      data: data,
      hora: hora,
      codEspecialidade: codEspecialidade,
      nomeEspecialidade: nomeEspecialidade,
      permiteConsulta: permiteConsulta,
      permiteProcedimento: permiteProcedimento,
    );
