// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItensPacotesStruct extends BaseStruct {
  ItensPacotesStruct({
    int? codEspecialidade,
    String? especialidade,
    int? codProcedimento,
    String? procedimento,
    String? codMaterial,
    String? material,
    int? qtdSessao,
  })  : _codEspecialidade = codEspecialidade,
        _especialidade = especialidade,
        _codProcedimento = codProcedimento,
        _procedimento = procedimento,
        _codMaterial = codMaterial,
        _material = material,
        _qtdSessao = qtdSessao;

  // "CodEspecialidade" field.
  int? _codEspecialidade;
  int get codEspecialidade => _codEspecialidade ?? 0;
  set codEspecialidade(int? val) => _codEspecialidade = val;

  void incrementCodEspecialidade(int amount) =>
      codEspecialidade = codEspecialidade + amount;

  bool hasCodEspecialidade() => _codEspecialidade != null;

  // "Especialidade" field.
  String? _especialidade;
  String get especialidade => _especialidade ?? '';
  set especialidade(String? val) => _especialidade = val;

  bool hasEspecialidade() => _especialidade != null;

  // "CodProcedimento" field.
  int? _codProcedimento;
  int get codProcedimento => _codProcedimento ?? 0;
  set codProcedimento(int? val) => _codProcedimento = val;

  void incrementCodProcedimento(int amount) =>
      codProcedimento = codProcedimento + amount;

  bool hasCodProcedimento() => _codProcedimento != null;

  // "Procedimento" field.
  String? _procedimento;
  String get procedimento => _procedimento ?? '';
  set procedimento(String? val) => _procedimento = val;

  bool hasProcedimento() => _procedimento != null;

  // "CodMaterial" field.
  String? _codMaterial;
  String get codMaterial => _codMaterial ?? '';
  set codMaterial(String? val) => _codMaterial = val;

  bool hasCodMaterial() => _codMaterial != null;

  // "Material" field.
  String? _material;
  String get material => _material ?? '';
  set material(String? val) => _material = val;

  bool hasMaterial() => _material != null;

  // "QtdSessao" field.
  int? _qtdSessao;
  int get qtdSessao => _qtdSessao ?? 0;
  set qtdSessao(int? val) => _qtdSessao = val;

  void incrementQtdSessao(int amount) => qtdSessao = qtdSessao + amount;

  bool hasQtdSessao() => _qtdSessao != null;

  static ItensPacotesStruct fromMap(Map<String, dynamic> data) =>
      ItensPacotesStruct(
        codEspecialidade: castToType<int>(data['CodEspecialidade']),
        especialidade: data['Especialidade'] as String?,
        codProcedimento: castToType<int>(data['CodProcedimento']),
        procedimento: data['Procedimento'] as String?,
        codMaterial: data['CodMaterial'] as String?,
        material: data['Material'] as String?,
        qtdSessao: castToType<int>(data['QtdSessao']),
      );

  static ItensPacotesStruct? maybeFromMap(dynamic data) => data is Map
      ? ItensPacotesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodEspecialidade': _codEspecialidade,
        'Especialidade': _especialidade,
        'CodProcedimento': _codProcedimento,
        'Procedimento': _procedimento,
        'CodMaterial': _codMaterial,
        'Material': _material,
        'QtdSessao': _qtdSessao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodEspecialidade': serializeParam(
          _codEspecialidade,
          ParamType.int,
        ),
        'Especialidade': serializeParam(
          _especialidade,
          ParamType.String,
        ),
        'CodProcedimento': serializeParam(
          _codProcedimento,
          ParamType.int,
        ),
        'Procedimento': serializeParam(
          _procedimento,
          ParamType.String,
        ),
        'CodMaterial': serializeParam(
          _codMaterial,
          ParamType.String,
        ),
        'Material': serializeParam(
          _material,
          ParamType.String,
        ),
        'QtdSessao': serializeParam(
          _qtdSessao,
          ParamType.int,
        ),
      }.withoutNulls;

  static ItensPacotesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItensPacotesStruct(
        codEspecialidade: deserializeParam(
          data['CodEspecialidade'],
          ParamType.int,
          false,
        ),
        especialidade: deserializeParam(
          data['Especialidade'],
          ParamType.String,
          false,
        ),
        codProcedimento: deserializeParam(
          data['CodProcedimento'],
          ParamType.int,
          false,
        ),
        procedimento: deserializeParam(
          data['Procedimento'],
          ParamType.String,
          false,
        ),
        codMaterial: deserializeParam(
          data['CodMaterial'],
          ParamType.String,
          false,
        ),
        material: deserializeParam(
          data['Material'],
          ParamType.String,
          false,
        ),
        qtdSessao: deserializeParam(
          data['QtdSessao'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ItensPacotesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ItensPacotesStruct &&
        codEspecialidade == other.codEspecialidade &&
        especialidade == other.especialidade &&
        codProcedimento == other.codProcedimento &&
        procedimento == other.procedimento &&
        codMaterial == other.codMaterial &&
        material == other.material &&
        qtdSessao == other.qtdSessao;
  }

  @override
  int get hashCode => const ListEquality().hash([
        codEspecialidade,
        especialidade,
        codProcedimento,
        procedimento,
        codMaterial,
        material,
        qtdSessao
      ]);
}

ItensPacotesStruct createItensPacotesStruct({
  int? codEspecialidade,
  String? especialidade,
  int? codProcedimento,
  String? procedimento,
  String? codMaterial,
  String? material,
  int? qtdSessao,
}) =>
    ItensPacotesStruct(
      codEspecialidade: codEspecialidade,
      especialidade: especialidade,
      codProcedimento: codProcedimento,
      procedimento: procedimento,
      codMaterial: codMaterial,
      material: material,
      qtdSessao: qtdSessao,
    );
