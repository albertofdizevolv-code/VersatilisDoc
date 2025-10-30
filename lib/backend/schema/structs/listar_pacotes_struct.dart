// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListarPacotesStruct extends BaseStruct {
  ListarPacotesStruct({
    int? codPacote,
    String? nomePacote,
    String? qtdDiasValidade,
    int? valorParcela,
    int? qtdParcelas,
    UnidadeStruct? unidade,
    List<ItensPacotesStruct>? itens,
  })  : _codPacote = codPacote,
        _nomePacote = nomePacote,
        _qtdDiasValidade = qtdDiasValidade,
        _valorParcela = valorParcela,
        _qtdParcelas = qtdParcelas,
        _unidade = unidade,
        _itens = itens;

  // "CodPacote" field.
  int? _codPacote;
  int get codPacote => _codPacote ?? 0;
  set codPacote(int? val) => _codPacote = val;

  void incrementCodPacote(int amount) => codPacote = codPacote + amount;

  bool hasCodPacote() => _codPacote != null;

  // "NomePacote" field.
  String? _nomePacote;
  String get nomePacote => _nomePacote ?? '';
  set nomePacote(String? val) => _nomePacote = val;

  bool hasNomePacote() => _nomePacote != null;

  // "QtdDiasValidade" field.
  String? _qtdDiasValidade;
  String get qtdDiasValidade => _qtdDiasValidade ?? '';
  set qtdDiasValidade(String? val) => _qtdDiasValidade = val;

  bool hasQtdDiasValidade() => _qtdDiasValidade != null;

  // "ValorParcela" field.
  int? _valorParcela;
  int get valorParcela => _valorParcela ?? 0;
  set valorParcela(int? val) => _valorParcela = val;

  void incrementValorParcela(int amount) =>
      valorParcela = valorParcela + amount;

  bool hasValorParcela() => _valorParcela != null;

  // "QtdParcelas" field.
  int? _qtdParcelas;
  int get qtdParcelas => _qtdParcelas ?? 0;
  set qtdParcelas(int? val) => _qtdParcelas = val;

  void incrementQtdParcelas(int amount) => qtdParcelas = qtdParcelas + amount;

  bool hasQtdParcelas() => _qtdParcelas != null;

  // "Unidade" field.
  UnidadeStruct? _unidade;
  UnidadeStruct get unidade => _unidade ?? UnidadeStruct();
  set unidade(UnidadeStruct? val) => _unidade = val;

  void updateUnidade(Function(UnidadeStruct) updateFn) {
    updateFn(_unidade ??= UnidadeStruct());
  }

  bool hasUnidade() => _unidade != null;

  // "Itens" field.
  List<ItensPacotesStruct>? _itens;
  List<ItensPacotesStruct> get itens => _itens ?? const [];
  set itens(List<ItensPacotesStruct>? val) => _itens = val;

  void updateItens(Function(List<ItensPacotesStruct>) updateFn) {
    updateFn(_itens ??= []);
  }

  bool hasItens() => _itens != null;

  static ListarPacotesStruct fromMap(Map<String, dynamic> data) =>
      ListarPacotesStruct(
        codPacote: castToType<int>(data['CodPacote']),
        nomePacote: data['NomePacote'] as String?,
        qtdDiasValidade: data['QtdDiasValidade'] as String?,
        valorParcela: castToType<int>(data['ValorParcela']),
        qtdParcelas: castToType<int>(data['QtdParcelas']),
        unidade: data['Unidade'] is UnidadeStruct
            ? data['Unidade']
            : UnidadeStruct.maybeFromMap(data['Unidade']),
        itens: getStructList(
          data['Itens'],
          ItensPacotesStruct.fromMap,
        ),
      );

  static ListarPacotesStruct? maybeFromMap(dynamic data) => data is Map
      ? ListarPacotesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodPacote': _codPacote,
        'NomePacote': _nomePacote,
        'QtdDiasValidade': _qtdDiasValidade,
        'ValorParcela': _valorParcela,
        'QtdParcelas': _qtdParcelas,
        'Unidade': _unidade?.toMap(),
        'Itens': _itens?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodPacote': serializeParam(
          _codPacote,
          ParamType.int,
        ),
        'NomePacote': serializeParam(
          _nomePacote,
          ParamType.String,
        ),
        'QtdDiasValidade': serializeParam(
          _qtdDiasValidade,
          ParamType.String,
        ),
        'ValorParcela': serializeParam(
          _valorParcela,
          ParamType.int,
        ),
        'QtdParcelas': serializeParam(
          _qtdParcelas,
          ParamType.int,
        ),
        'Unidade': serializeParam(
          _unidade,
          ParamType.DataStruct,
        ),
        'Itens': serializeParam(
          _itens,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ListarPacotesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListarPacotesStruct(
        codPacote: deserializeParam(
          data['CodPacote'],
          ParamType.int,
          false,
        ),
        nomePacote: deserializeParam(
          data['NomePacote'],
          ParamType.String,
          false,
        ),
        qtdDiasValidade: deserializeParam(
          data['QtdDiasValidade'],
          ParamType.String,
          false,
        ),
        valorParcela: deserializeParam(
          data['ValorParcela'],
          ParamType.int,
          false,
        ),
        qtdParcelas: deserializeParam(
          data['QtdParcelas'],
          ParamType.int,
          false,
        ),
        unidade: deserializeStructParam(
          data['Unidade'],
          ParamType.DataStruct,
          false,
          structBuilder: UnidadeStruct.fromSerializableMap,
        ),
        itens: deserializeStructParam<ItensPacotesStruct>(
          data['Itens'],
          ParamType.DataStruct,
          true,
          structBuilder: ItensPacotesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ListarPacotesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ListarPacotesStruct &&
        codPacote == other.codPacote &&
        nomePacote == other.nomePacote &&
        qtdDiasValidade == other.qtdDiasValidade &&
        valorParcela == other.valorParcela &&
        qtdParcelas == other.qtdParcelas &&
        unidade == other.unidade &&
        listEquality.equals(itens, other.itens);
  }

  @override
  int get hashCode => const ListEquality().hash([
        codPacote,
        nomePacote,
        qtdDiasValidade,
        valorParcela,
        qtdParcelas,
        unidade,
        itens
      ]);
}

ListarPacotesStruct createListarPacotesStruct({
  int? codPacote,
  String? nomePacote,
  String? qtdDiasValidade,
  int? valorParcela,
  int? qtdParcelas,
  UnidadeStruct? unidade,
}) =>
    ListarPacotesStruct(
      codPacote: codPacote,
      nomePacote: nomePacote,
      qtdDiasValidade: qtdDiasValidade,
      valorParcela: valorParcela,
      qtdParcelas: qtdParcelas,
      unidade: unidade ?? UnidadeStruct(),
    );
