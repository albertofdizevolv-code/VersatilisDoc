// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ColaboradorEspecialidadeStruct extends BaseStruct {
  ColaboradorEspecialidadeStruct({
    int? codColaborador,
    String? nome,
    List<ProcedimentosStruct>? procedimentos,
  })  : _codColaborador = codColaborador,
        _nome = nome,
        _procedimentos = procedimentos;

  // "CodColaborador" field.
  int? _codColaborador;
  int get codColaborador => _codColaborador ?? 0;
  set codColaborador(int? val) => _codColaborador = val;

  void incrementCodColaborador(int amount) =>
      codColaborador = codColaborador + amount;

  bool hasCodColaborador() => _codColaborador != null;

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "Procedimentos" field.
  List<ProcedimentosStruct>? _procedimentos;
  List<ProcedimentosStruct> get procedimentos => _procedimentos ?? const [];
  set procedimentos(List<ProcedimentosStruct>? val) => _procedimentos = val;

  void updateProcedimentos(Function(List<ProcedimentosStruct>) updateFn) {
    updateFn(_procedimentos ??= []);
  }

  bool hasProcedimentos() => _procedimentos != null;

  static ColaboradorEspecialidadeStruct fromMap(Map<String, dynamic> data) =>
      ColaboradorEspecialidadeStruct(
        codColaborador: castToType<int>(data['CodColaborador']),
        nome: data['Nome'] as String?,
        procedimentos: getStructList(
          data['Procedimentos'],
          ProcedimentosStruct.fromMap,
        ),
      );

  static ColaboradorEspecialidadeStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? ColaboradorEspecialidadeStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'CodColaborador': _codColaborador,
        'Nome': _nome,
        'Procedimentos': _procedimentos?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodColaborador': serializeParam(
          _codColaborador,
          ParamType.int,
        ),
        'Nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'Procedimentos': serializeParam(
          _procedimentos,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ColaboradorEspecialidadeStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ColaboradorEspecialidadeStruct(
        codColaborador: deserializeParam(
          data['CodColaborador'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['Nome'],
          ParamType.String,
          false,
        ),
        procedimentos: deserializeStructParam<ProcedimentosStruct>(
          data['Procedimentos'],
          ParamType.DataStruct,
          true,
          structBuilder: ProcedimentosStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ColaboradorEspecialidadeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ColaboradorEspecialidadeStruct &&
        codColaborador == other.codColaborador &&
        nome == other.nome &&
        listEquality.equals(procedimentos, other.procedimentos);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([codColaborador, nome, procedimentos]);
}

ColaboradorEspecialidadeStruct createColaboradorEspecialidadeStruct({
  int? codColaborador,
  String? nome,
}) =>
    ColaboradorEspecialidadeStruct(
      codColaborador: codColaborador,
      nome: nome,
    );
