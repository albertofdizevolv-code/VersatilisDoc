// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PacoteVendidoStruct extends BaseStruct {
  PacoteVendidoStruct({
    int? codigoVenda,
    int? codPacote,
    String? nomePacote,
    int? valorTotal,
    String? dataValidade,
    bool? vencido,
    bool? vendidoWeb,
    String? statusFinanceiro,
    UnidadeStruct? unidade,
    List<ItensStruct>? itens,
  })  : _codigoVenda = codigoVenda,
        _codPacote = codPacote,
        _nomePacote = nomePacote,
        _valorTotal = valorTotal,
        _dataValidade = dataValidade,
        _vencido = vencido,
        _vendidoWeb = vendidoWeb,
        _statusFinanceiro = statusFinanceiro,
        _unidade = unidade,
        _itens = itens;

  // "CodigoVenda" field.
  int? _codigoVenda;
  int get codigoVenda => _codigoVenda ?? 0;
  set codigoVenda(int? val) => _codigoVenda = val;

  void incrementCodigoVenda(int amount) => codigoVenda = codigoVenda + amount;

  bool hasCodigoVenda() => _codigoVenda != null;

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

  // "ValorTotal" field.
  int? _valorTotal;
  int get valorTotal => _valorTotal ?? 0;
  set valorTotal(int? val) => _valorTotal = val;

  void incrementValorTotal(int amount) => valorTotal = valorTotal + amount;

  bool hasValorTotal() => _valorTotal != null;

  // "DataValidade" field.
  String? _dataValidade;
  String get dataValidade => _dataValidade ?? '';
  set dataValidade(String? val) => _dataValidade = val;

  bool hasDataValidade() => _dataValidade != null;

  // "Vencido" field.
  bool? _vencido;
  bool get vencido => _vencido ?? false;
  set vencido(bool? val) => _vencido = val;

  bool hasVencido() => _vencido != null;

  // "VendidoWeb" field.
  bool? _vendidoWeb;
  bool get vendidoWeb => _vendidoWeb ?? false;
  set vendidoWeb(bool? val) => _vendidoWeb = val;

  bool hasVendidoWeb() => _vendidoWeb != null;

  // "StatusFinanceiro" field.
  String? _statusFinanceiro;
  String get statusFinanceiro => _statusFinanceiro ?? '';
  set statusFinanceiro(String? val) => _statusFinanceiro = val;

  bool hasStatusFinanceiro() => _statusFinanceiro != null;

  // "Unidade" field.
  UnidadeStruct? _unidade;
  UnidadeStruct get unidade => _unidade ?? UnidadeStruct();
  set unidade(UnidadeStruct? val) => _unidade = val;

  void updateUnidade(Function(UnidadeStruct) updateFn) {
    updateFn(_unidade ??= UnidadeStruct());
  }

  bool hasUnidade() => _unidade != null;

  // "Itens" field.
  List<ItensStruct>? _itens;
  List<ItensStruct> get itens => _itens ?? const [];
  set itens(List<ItensStruct>? val) => _itens = val;

  void updateItens(Function(List<ItensStruct>) updateFn) {
    updateFn(_itens ??= []);
  }

  bool hasItens() => _itens != null;

  static PacoteVendidoStruct fromMap(Map<String, dynamic> data) =>
      PacoteVendidoStruct(
        codigoVenda: castToType<int>(data['CodigoVenda']),
        codPacote: castToType<int>(data['CodPacote']),
        nomePacote: data['NomePacote'] as String?,
        valorTotal: castToType<int>(data['ValorTotal']),
        dataValidade: data['DataValidade'] as String?,
        vencido: data['Vencido'] as bool?,
        vendidoWeb: data['VendidoWeb'] as bool?,
        statusFinanceiro: data['StatusFinanceiro'] as String?,
        unidade: data['Unidade'] is UnidadeStruct
            ? data['Unidade']
            : UnidadeStruct.maybeFromMap(data['Unidade']),
        itens: getStructList(
          data['Itens'],
          ItensStruct.fromMap,
        ),
      );

  static PacoteVendidoStruct? maybeFromMap(dynamic data) => data is Map
      ? PacoteVendidoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodigoVenda': _codigoVenda,
        'CodPacote': _codPacote,
        'NomePacote': _nomePacote,
        'ValorTotal': _valorTotal,
        'DataValidade': _dataValidade,
        'Vencido': _vencido,
        'VendidoWeb': _vendidoWeb,
        'StatusFinanceiro': _statusFinanceiro,
        'Unidade': _unidade?.toMap(),
        'Itens': _itens?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodigoVenda': serializeParam(
          _codigoVenda,
          ParamType.int,
        ),
        'CodPacote': serializeParam(
          _codPacote,
          ParamType.int,
        ),
        'NomePacote': serializeParam(
          _nomePacote,
          ParamType.String,
        ),
        'ValorTotal': serializeParam(
          _valorTotal,
          ParamType.int,
        ),
        'DataValidade': serializeParam(
          _dataValidade,
          ParamType.String,
        ),
        'Vencido': serializeParam(
          _vencido,
          ParamType.bool,
        ),
        'VendidoWeb': serializeParam(
          _vendidoWeb,
          ParamType.bool,
        ),
        'StatusFinanceiro': serializeParam(
          _statusFinanceiro,
          ParamType.String,
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

  static PacoteVendidoStruct fromSerializableMap(Map<String, dynamic> data) =>
      PacoteVendidoStruct(
        codigoVenda: deserializeParam(
          data['CodigoVenda'],
          ParamType.int,
          false,
        ),
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
        valorTotal: deserializeParam(
          data['ValorTotal'],
          ParamType.int,
          false,
        ),
        dataValidade: deserializeParam(
          data['DataValidade'],
          ParamType.String,
          false,
        ),
        vencido: deserializeParam(
          data['Vencido'],
          ParamType.bool,
          false,
        ),
        vendidoWeb: deserializeParam(
          data['VendidoWeb'],
          ParamType.bool,
          false,
        ),
        statusFinanceiro: deserializeParam(
          data['StatusFinanceiro'],
          ParamType.String,
          false,
        ),
        unidade: deserializeStructParam(
          data['Unidade'],
          ParamType.DataStruct,
          false,
          structBuilder: UnidadeStruct.fromSerializableMap,
        ),
        itens: deserializeStructParam<ItensStruct>(
          data['Itens'],
          ParamType.DataStruct,
          true,
          structBuilder: ItensStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PacoteVendidoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PacoteVendidoStruct &&
        codigoVenda == other.codigoVenda &&
        codPacote == other.codPacote &&
        nomePacote == other.nomePacote &&
        valorTotal == other.valorTotal &&
        dataValidade == other.dataValidade &&
        vencido == other.vencido &&
        vendidoWeb == other.vendidoWeb &&
        statusFinanceiro == other.statusFinanceiro &&
        unidade == other.unidade &&
        listEquality.equals(itens, other.itens);
  }

  @override
  int get hashCode => const ListEquality().hash([
        codigoVenda,
        codPacote,
        nomePacote,
        valorTotal,
        dataValidade,
        vencido,
        vendidoWeb,
        statusFinanceiro,
        unidade,
        itens
      ]);
}

PacoteVendidoStruct createPacoteVendidoStruct({
  int? codigoVenda,
  int? codPacote,
  String? nomePacote,
  int? valorTotal,
  String? dataValidade,
  bool? vencido,
  bool? vendidoWeb,
  String? statusFinanceiro,
  UnidadeStruct? unidade,
}) =>
    PacoteVendidoStruct(
      codigoVenda: codigoVenda,
      codPacote: codPacote,
      nomePacote: nomePacote,
      valorTotal: valorTotal,
      dataValidade: dataValidade,
      vencido: vencido,
      vendidoWeb: vendidoWeb,
      statusFinanceiro: statusFinanceiro,
      unidade: unidade ?? UnidadeStruct(),
    );
