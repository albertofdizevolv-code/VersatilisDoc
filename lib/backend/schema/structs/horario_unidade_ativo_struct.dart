// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HorarioUnidadeAtivoStruct extends BaseStruct {
  HorarioUnidadeAtivoStruct({
    int? codColaborador,
    String? nomeMedico,
    String? crm,
    String? observacao,
    bool? ordemChegada,
    List<HorariosUnidadeStruct>? horarios,
  })  : _codColaborador = codColaborador,
        _nomeMedico = nomeMedico,
        _crm = crm,
        _observacao = observacao,
        _ordemChegada = ordemChegada,
        _horarios = horarios;

  // "CodColaborador" field.
  int? _codColaborador;
  int get codColaborador => _codColaborador ?? 0;
  set codColaborador(int? val) => _codColaborador = val;

  void incrementCodColaborador(int amount) =>
      codColaborador = codColaborador + amount;

  bool hasCodColaborador() => _codColaborador != null;

  // "NomeMedico" field.
  String? _nomeMedico;
  String get nomeMedico => _nomeMedico ?? '';
  set nomeMedico(String? val) => _nomeMedico = val;

  bool hasNomeMedico() => _nomeMedico != null;

  // "CRM" field.
  String? _crm;
  String get crm => _crm ?? '';
  set crm(String? val) => _crm = val;

  bool hasCrm() => _crm != null;

  // "Observacao" field.
  String? _observacao;
  String get observacao => _observacao ?? '';
  set observacao(String? val) => _observacao = val;

  bool hasObservacao() => _observacao != null;

  // "OrdemChegada" field.
  bool? _ordemChegada;
  bool get ordemChegada => _ordemChegada ?? false;
  set ordemChegada(bool? val) => _ordemChegada = val;

  bool hasOrdemChegada() => _ordemChegada != null;

  // "Horarios" field.
  List<HorariosUnidadeStruct>? _horarios;
  List<HorariosUnidadeStruct> get horarios => _horarios ?? const [];
  set horarios(List<HorariosUnidadeStruct>? val) => _horarios = val;

  void updateHorarios(Function(List<HorariosUnidadeStruct>) updateFn) {
    updateFn(_horarios ??= []);
  }

  bool hasHorarios() => _horarios != null;

  static HorarioUnidadeAtivoStruct fromMap(Map<String, dynamic> data) =>
      HorarioUnidadeAtivoStruct(
        codColaborador: castToType<int>(data['CodColaborador']),
        nomeMedico: data['NomeMedico'] as String?,
        crm: data['CRM'] as String?,
        observacao: data['Observacao'] as String?,
        ordemChegada: data['OrdemChegada'] as bool?,
        horarios: getStructList(
          data['Horarios'],
          HorariosUnidadeStruct.fromMap,
        ),
      );

  static HorarioUnidadeAtivoStruct? maybeFromMap(dynamic data) => data is Map
      ? HorarioUnidadeAtivoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodColaborador': _codColaborador,
        'NomeMedico': _nomeMedico,
        'CRM': _crm,
        'Observacao': _observacao,
        'OrdemChegada': _ordemChegada,
        'Horarios': _horarios?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodColaborador': serializeParam(
          _codColaborador,
          ParamType.int,
        ),
        'NomeMedico': serializeParam(
          _nomeMedico,
          ParamType.String,
        ),
        'CRM': serializeParam(
          _crm,
          ParamType.String,
        ),
        'Observacao': serializeParam(
          _observacao,
          ParamType.String,
        ),
        'OrdemChegada': serializeParam(
          _ordemChegada,
          ParamType.bool,
        ),
        'Horarios': serializeParam(
          _horarios,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static HorarioUnidadeAtivoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      HorarioUnidadeAtivoStruct(
        codColaborador: deserializeParam(
          data['CodColaborador'],
          ParamType.int,
          false,
        ),
        nomeMedico: deserializeParam(
          data['NomeMedico'],
          ParamType.String,
          false,
        ),
        crm: deserializeParam(
          data['CRM'],
          ParamType.String,
          false,
        ),
        observacao: deserializeParam(
          data['Observacao'],
          ParamType.String,
          false,
        ),
        ordemChegada: deserializeParam(
          data['OrdemChegada'],
          ParamType.bool,
          false,
        ),
        horarios: deserializeStructParam<HorariosUnidadeStruct>(
          data['Horarios'],
          ParamType.DataStruct,
          true,
          structBuilder: HorariosUnidadeStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'HorarioUnidadeAtivoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is HorarioUnidadeAtivoStruct &&
        codColaborador == other.codColaborador &&
        nomeMedico == other.nomeMedico &&
        crm == other.crm &&
        observacao == other.observacao &&
        ordemChegada == other.ordemChegada &&
        listEquality.equals(horarios, other.horarios);
  }

  @override
  int get hashCode => const ListEquality().hash(
      [codColaborador, nomeMedico, crm, observacao, ordemChegada, horarios]);
}

HorarioUnidadeAtivoStruct createHorarioUnidadeAtivoStruct({
  int? codColaborador,
  String? nomeMedico,
  String? crm,
  String? observacao,
  bool? ordemChegada,
}) =>
    HorarioUnidadeAtivoStruct(
      codColaborador: codColaborador,
      nomeMedico: nomeMedico,
      crm: crm,
      observacao: observacao,
      ordemChegada: ordemChegada,
    );
