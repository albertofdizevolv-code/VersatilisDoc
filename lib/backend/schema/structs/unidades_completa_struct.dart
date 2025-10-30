// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UnidadesCompletaStruct extends BaseStruct {
  UnidadesCompletaStruct({
    int? codRegiao,
    String? nomeRegiao,
    List<UnidadesStruct>? unidades,
  })  : _codRegiao = codRegiao,
        _nomeRegiao = nomeRegiao,
        _unidades = unidades;

  // "CodRegiao" field.
  int? _codRegiao;
  int get codRegiao => _codRegiao ?? 0;
  set codRegiao(int? val) => _codRegiao = val;

  void incrementCodRegiao(int amount) => codRegiao = codRegiao + amount;

  bool hasCodRegiao() => _codRegiao != null;

  // "NomeRegiao" field.
  String? _nomeRegiao;
  String get nomeRegiao => _nomeRegiao ?? '';
  set nomeRegiao(String? val) => _nomeRegiao = val;

  bool hasNomeRegiao() => _nomeRegiao != null;

  // "Unidades" field.
  List<UnidadesStruct>? _unidades;
  List<UnidadesStruct> get unidades => _unidades ?? const [];
  set unidades(List<UnidadesStruct>? val) => _unidades = val;

  void updateUnidades(Function(List<UnidadesStruct>) updateFn) {
    updateFn(_unidades ??= []);
  }

  bool hasUnidades() => _unidades != null;

  static UnidadesCompletaStruct fromMap(Map<String, dynamic> data) =>
      UnidadesCompletaStruct(
        codRegiao: castToType<int>(data['CodRegiao']),
        nomeRegiao: data['NomeRegiao'] as String?,
        unidades: getStructList(
          data['Unidades'],
          UnidadesStruct.fromMap,
        ),
      );

  static UnidadesCompletaStruct? maybeFromMap(dynamic data) => data is Map
      ? UnidadesCompletaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodRegiao': _codRegiao,
        'NomeRegiao': _nomeRegiao,
        'Unidades': _unidades?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodRegiao': serializeParam(
          _codRegiao,
          ParamType.int,
        ),
        'NomeRegiao': serializeParam(
          _nomeRegiao,
          ParamType.String,
        ),
        'Unidades': serializeParam(
          _unidades,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static UnidadesCompletaStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UnidadesCompletaStruct(
        codRegiao: deserializeParam(
          data['CodRegiao'],
          ParamType.int,
          false,
        ),
        nomeRegiao: deserializeParam(
          data['NomeRegiao'],
          ParamType.String,
          false,
        ),
        unidades: deserializeStructParam<UnidadesStruct>(
          data['Unidades'],
          ParamType.DataStruct,
          true,
          structBuilder: UnidadesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UnidadesCompletaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UnidadesCompletaStruct &&
        codRegiao == other.codRegiao &&
        nomeRegiao == other.nomeRegiao &&
        listEquality.equals(unidades, other.unidades);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([codRegiao, nomeRegiao, unidades]);
}

UnidadesCompletaStruct createUnidadesCompletaStruct({
  int? codRegiao,
  String? nomeRegiao,
}) =>
    UnidadesCompletaStruct(
      codRegiao: codRegiao,
      nomeRegiao: nomeRegiao,
    );
