// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GrupoDeExamesStruct extends BaseStruct {
  GrupoDeExamesStruct({
    int? codGrupoExame,
    String? nomeGrupoExame,
    List<ItensGrupoStruct>? itens,
  })  : _codGrupoExame = codGrupoExame,
        _nomeGrupoExame = nomeGrupoExame,
        _itens = itens;

  // "CodGrupoExame" field.
  int? _codGrupoExame;
  int get codGrupoExame => _codGrupoExame ?? 0;
  set codGrupoExame(int? val) => _codGrupoExame = val;

  void incrementCodGrupoExame(int amount) =>
      codGrupoExame = codGrupoExame + amount;

  bool hasCodGrupoExame() => _codGrupoExame != null;

  // "NomeGrupoExame" field.
  String? _nomeGrupoExame;
  String get nomeGrupoExame => _nomeGrupoExame ?? '';
  set nomeGrupoExame(String? val) => _nomeGrupoExame = val;

  bool hasNomeGrupoExame() => _nomeGrupoExame != null;

  // "Itens" field.
  List<ItensGrupoStruct>? _itens;
  List<ItensGrupoStruct> get itens => _itens ?? const [];
  set itens(List<ItensGrupoStruct>? val) => _itens = val;

  void updateItens(Function(List<ItensGrupoStruct>) updateFn) {
    updateFn(_itens ??= []);
  }

  bool hasItens() => _itens != null;

  static GrupoDeExamesStruct fromMap(Map<String, dynamic> data) =>
      GrupoDeExamesStruct(
        codGrupoExame: castToType<int>(data['CodGrupoExame']),
        nomeGrupoExame: data['NomeGrupoExame'] as String?,
        itens: getStructList(
          data['Itens'],
          ItensGrupoStruct.fromMap,
        ),
      );

  static GrupoDeExamesStruct? maybeFromMap(dynamic data) => data is Map
      ? GrupoDeExamesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodGrupoExame': _codGrupoExame,
        'NomeGrupoExame': _nomeGrupoExame,
        'Itens': _itens?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodGrupoExame': serializeParam(
          _codGrupoExame,
          ParamType.int,
        ),
        'NomeGrupoExame': serializeParam(
          _nomeGrupoExame,
          ParamType.String,
        ),
        'Itens': serializeParam(
          _itens,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static GrupoDeExamesStruct fromSerializableMap(Map<String, dynamic> data) =>
      GrupoDeExamesStruct(
        codGrupoExame: deserializeParam(
          data['CodGrupoExame'],
          ParamType.int,
          false,
        ),
        nomeGrupoExame: deserializeParam(
          data['NomeGrupoExame'],
          ParamType.String,
          false,
        ),
        itens: deserializeStructParam<ItensGrupoStruct>(
          data['Itens'],
          ParamType.DataStruct,
          true,
          structBuilder: ItensGrupoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'GrupoDeExamesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is GrupoDeExamesStruct &&
        codGrupoExame == other.codGrupoExame &&
        nomeGrupoExame == other.nomeGrupoExame &&
        listEquality.equals(itens, other.itens);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([codGrupoExame, nomeGrupoExame, itens]);
}

GrupoDeExamesStruct createGrupoDeExamesStruct({
  int? codGrupoExame,
  String? nomeGrupoExame,
}) =>
    GrupoDeExamesStruct(
      codGrupoExame: codGrupoExame,
      nomeGrupoExame: nomeGrupoExame,
    );
