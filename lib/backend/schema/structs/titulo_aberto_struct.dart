// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TituloAbertoStruct extends BaseStruct {
  TituloAbertoStruct({
    int? codTitulo,
    String? dataVencimento,
    String? status,
  })  : _codTitulo = codTitulo,
        _dataVencimento = dataVencimento,
        _status = status;

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

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static TituloAbertoStruct fromMap(Map<String, dynamic> data) =>
      TituloAbertoStruct(
        codTitulo: castToType<int>(data['CodTitulo']),
        dataVencimento: data['DataVencimento'] as String?,
        status: data['Status'] as String?,
      );

  static TituloAbertoStruct? maybeFromMap(dynamic data) => data is Map
      ? TituloAbertoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodTitulo': _codTitulo,
        'DataVencimento': _dataVencimento,
        'Status': _status,
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
        'Status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static TituloAbertoStruct fromSerializableMap(Map<String, dynamic> data) =>
      TituloAbertoStruct(
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
        status: deserializeParam(
          data['Status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TituloAbertoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TituloAbertoStruct &&
        codTitulo == other.codTitulo &&
        dataVencimento == other.dataVencimento &&
        status == other.status;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([codTitulo, dataVencimento, status]);
}

TituloAbertoStruct createTituloAbertoStruct({
  int? codTitulo,
  String? dataVencimento,
  String? status,
}) =>
    TituloAbertoStruct(
      codTitulo: codTitulo,
      dataVencimento: dataVencimento,
      status: status,
    );
