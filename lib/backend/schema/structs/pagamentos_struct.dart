// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PagamentosStruct extends BaseStruct {
  PagamentosStruct({
    int? codTitulo,
    String? dataVencimento,
    List<FormasPagamentoStruct>? formasPagamento,
  })  : _codTitulo = codTitulo,
        _dataVencimento = dataVencimento,
        _formasPagamento = formasPagamento;

  // "CodTitulo" field.
  int? _codTitulo;
  int get codTitulo => _codTitulo ?? 0;
  set codTitulo(int? val) => _codTitulo = val;

  void incrementCodTitulo(int amount) => codTitulo = codTitulo + amount;

  bool hasCodTitulo() => _codTitulo != null;

  // "DataVencimento" field.
  String? _dataVencimento;
  String get dataVencimento => _dataVencimento ?? '';
  set dataVencimento(String? val) => _dataVencimento = val;

  bool hasDataVencimento() => _dataVencimento != null;

  // "FormasPagamento" field.
  List<FormasPagamentoStruct>? _formasPagamento;
  List<FormasPagamentoStruct> get formasPagamento =>
      _formasPagamento ?? const [];
  set formasPagamento(List<FormasPagamentoStruct>? val) =>
      _formasPagamento = val;

  void updateFormasPagamento(Function(List<FormasPagamentoStruct>) updateFn) {
    updateFn(_formasPagamento ??= []);
  }

  bool hasFormasPagamento() => _formasPagamento != null;

  static PagamentosStruct fromMap(Map<String, dynamic> data) =>
      PagamentosStruct(
        codTitulo: castToType<int>(data['CodTitulo']),
        dataVencimento: data['DataVencimento'] as String?,
        formasPagamento: getStructList(
          data['FormasPagamento'],
          FormasPagamentoStruct.fromMap,
        ),
      );

  static PagamentosStruct? maybeFromMap(dynamic data) => data is Map
      ? PagamentosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodTitulo': _codTitulo,
        'DataVencimento': _dataVencimento,
        'FormasPagamento': _formasPagamento?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodTitulo': serializeParam(
          _codTitulo,
          ParamType.int,
        ),
        'DataVencimento': serializeParam(
          _dataVencimento,
          ParamType.String,
        ),
        'FormasPagamento': serializeParam(
          _formasPagamento,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static PagamentosStruct fromSerializableMap(Map<String, dynamic> data) =>
      PagamentosStruct(
        codTitulo: deserializeParam(
          data['CodTitulo'],
          ParamType.int,
          false,
        ),
        dataVencimento: deserializeParam(
          data['DataVencimento'],
          ParamType.String,
          false,
        ),
        formasPagamento: deserializeStructParam<FormasPagamentoStruct>(
          data['FormasPagamento'],
          ParamType.DataStruct,
          true,
          structBuilder: FormasPagamentoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PagamentosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PagamentosStruct &&
        codTitulo == other.codTitulo &&
        dataVencimento == other.dataVencimento &&
        listEquality.equals(formasPagamento, other.formasPagamento);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([codTitulo, dataVencimento, formasPagamento]);
}

PagamentosStruct createPagamentosStruct({
  int? codTitulo,
  String? dataVencimento,
}) =>
    PagamentosStruct(
      codTitulo: codTitulo,
      dataVencimento: dataVencimento,
    );
