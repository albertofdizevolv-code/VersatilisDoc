// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HorariosUnidadeStruct extends BaseStruct {
  HorariosUnidadeStruct({
    int? codHorario,
    String? horario,
    int? codUnidade,
    String? unidade,
    bool? permiteConsulta,
    bool? permiteProcedimento,
    List<ProcedimentosUnidadeStruct>? procedimentos,
  })  : _codHorario = codHorario,
        _horario = horario,
        _codUnidade = codUnidade,
        _unidade = unidade,
        _permiteConsulta = permiteConsulta,
        _permiteProcedimento = permiteProcedimento,
        _procedimentos = procedimentos;

  // "CodHorario" field.
  int? _codHorario;
  int get codHorario => _codHorario ?? 0;
  set codHorario(int? val) => _codHorario = val;

  void incrementCodHorario(int amount) => codHorario = codHorario + amount;

  bool hasCodHorario() => _codHorario != null;

  // "Horario" field.
  String? _horario;
  String get horario => _horario ?? '';
  set horario(String? val) => _horario = val;

  bool hasHorario() => _horario != null;

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
  List<ProcedimentosUnidadeStruct>? _procedimentos;
  List<ProcedimentosUnidadeStruct> get procedimentos =>
      _procedimentos ?? const [];
  set procedimentos(List<ProcedimentosUnidadeStruct>? val) =>
      _procedimentos = val;

  void updateProcedimentos(
      Function(List<ProcedimentosUnidadeStruct>) updateFn) {
    updateFn(_procedimentos ??= []);
  }

  bool hasProcedimentos() => _procedimentos != null;

  static HorariosUnidadeStruct fromMap(Map<String, dynamic> data) =>
      HorariosUnidadeStruct(
        codHorario: castToType<int>(data['CodHorario']),
        horario: data['Horario'] as String?,
        codUnidade: castToType<int>(data['CodUnidade']),
        unidade: data['Unidade'] as String?,
        permiteConsulta: data['PermiteConsulta'] as bool?,
        permiteProcedimento: data['PermiteProcedimento'] as bool?,
        procedimentos: getStructList(
          data['Procedimentos'],
          ProcedimentosUnidadeStruct.fromMap,
        ),
      );

  static HorariosUnidadeStruct? maybeFromMap(dynamic data) => data is Map
      ? HorariosUnidadeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodHorario': _codHorario,
        'Horario': _horario,
        'CodUnidade': _codUnidade,
        'Unidade': _unidade,
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
        'Horario': serializeParam(
          _horario,
          ParamType.String,
        ),
        'CodUnidade': serializeParam(
          _codUnidade,
          ParamType.int,
        ),
        'Unidade': serializeParam(
          _unidade,
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

  static HorariosUnidadeStruct fromSerializableMap(Map<String, dynamic> data) =>
      HorariosUnidadeStruct(
        codHorario: deserializeParam(
          data['CodHorario'],
          ParamType.int,
          false,
        ),
        horario: deserializeParam(
          data['Horario'],
          ParamType.String,
          false,
        ),
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
        procedimentos: deserializeStructParam<ProcedimentosUnidadeStruct>(
          data['Procedimentos'],
          ParamType.DataStruct,
          true,
          structBuilder: ProcedimentosUnidadeStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'HorariosUnidadeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is HorariosUnidadeStruct &&
        codHorario == other.codHorario &&
        horario == other.horario &&
        codUnidade == other.codUnidade &&
        unidade == other.unidade &&
        permiteConsulta == other.permiteConsulta &&
        permiteProcedimento == other.permiteProcedimento &&
        listEquality.equals(procedimentos, other.procedimentos);
  }

  @override
  int get hashCode => const ListEquality().hash([
        codHorario,
        horario,
        codUnidade,
        unidade,
        permiteConsulta,
        permiteProcedimento,
        procedimentos
      ]);
}

HorariosUnidadeStruct createHorariosUnidadeStruct({
  int? codHorario,
  String? horario,
  int? codUnidade,
  String? unidade,
  bool? permiteConsulta,
  bool? permiteProcedimento,
}) =>
    HorariosUnidadeStruct(
      codHorario: codHorario,
      horario: horario,
      codUnidade: codUnidade,
      unidade: unidade,
      permiteConsulta: permiteConsulta,
      permiteProcedimento: permiteProcedimento,
    );
