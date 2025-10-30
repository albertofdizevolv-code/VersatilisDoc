// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormasPagamentoStruct extends BaseStruct {
  FormasPagamentoStruct({
    String? descricao,
    String? forma,
    int? codigoCartao,
    int? valor,
  })  : _descricao = descricao,
        _forma = forma,
        _codigoCartao = codigoCartao,
        _valor = valor;

  // "Descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "Forma" field.
  String? _forma;
  String get forma => _forma ?? '';
  set forma(String? val) => _forma = val;

  bool hasForma() => _forma != null;

  // "CodigoCartao" field.
  int? _codigoCartao;
  int get codigoCartao => _codigoCartao ?? 0;
  set codigoCartao(int? val) => _codigoCartao = val;

  void incrementCodigoCartao(int amount) =>
      codigoCartao = codigoCartao + amount;

  bool hasCodigoCartao() => _codigoCartao != null;

  // "Valor" field.
  int? _valor;
  int get valor => _valor ?? 0;
  set valor(int? val) => _valor = val;

  void incrementValor(int amount) => valor = valor + amount;

  bool hasValor() => _valor != null;

  static FormasPagamentoStruct fromMap(Map<String, dynamic> data) =>
      FormasPagamentoStruct(
        descricao: data['Descricao'] as String?,
        forma: data['Forma'] as String?,
        codigoCartao: castToType<int>(data['CodigoCartao']),
        valor: castToType<int>(data['Valor']),
      );

  static FormasPagamentoStruct? maybeFromMap(dynamic data) => data is Map
      ? FormasPagamentoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Descricao': _descricao,
        'Forma': _forma,
        'CodigoCartao': _codigoCartao,
        'Valor': _valor,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'Forma': serializeParam(
          _forma,
          ParamType.String,
        ),
        'CodigoCartao': serializeParam(
          _codigoCartao,
          ParamType.int,
        ),
        'Valor': serializeParam(
          _valor,
          ParamType.int,
        ),
      }.withoutNulls;

  static FormasPagamentoStruct fromSerializableMap(Map<String, dynamic> data) =>
      FormasPagamentoStruct(
        descricao: deserializeParam(
          data['Descricao'],
          ParamType.String,
          false,
        ),
        forma: deserializeParam(
          data['Forma'],
          ParamType.String,
          false,
        ),
        codigoCartao: deserializeParam(
          data['CodigoCartao'],
          ParamType.int,
          false,
        ),
        valor: deserializeParam(
          data['Valor'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'FormasPagamentoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FormasPagamentoStruct &&
        descricao == other.descricao &&
        forma == other.forma &&
        codigoCartao == other.codigoCartao &&
        valor == other.valor;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([descricao, forma, codigoCartao, valor]);
}

FormasPagamentoStruct createFormasPagamentoStruct({
  String? descricao,
  String? forma,
  int? codigoCartao,
  int? valor,
}) =>
    FormasPagamentoStruct(
      descricao: descricao,
      forma: forma,
      codigoCartao: codigoCartao,
      valor: valor,
    );
