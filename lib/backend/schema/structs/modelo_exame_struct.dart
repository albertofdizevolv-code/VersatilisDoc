// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ModeloExameStruct extends BaseStruct {
  ModeloExameStruct({
    int? codModeloReceituario,
    String? nome,
    String? template,
  })  : _codModeloReceituario = codModeloReceituario,
        _nome = nome,
        _template = template;

  // "CodModeloReceituario" field.
  int? _codModeloReceituario;
  int get codModeloReceituario => _codModeloReceituario ?? 0;
  set codModeloReceituario(int? val) => _codModeloReceituario = val;

  void incrementCodModeloReceituario(int amount) =>
      codModeloReceituario = codModeloReceituario + amount;

  bool hasCodModeloReceituario() => _codModeloReceituario != null;

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "Template" field.
  String? _template;
  String get template => _template ?? '';
  set template(String? val) => _template = val;

  bool hasTemplate() => _template != null;

  static ModeloExameStruct fromMap(Map<String, dynamic> data) =>
      ModeloExameStruct(
        codModeloReceituario: castToType<int>(data['CodModeloReceituario']),
        nome: data['Nome'] as String?,
        template: data['Template'] as String?,
      );

  static ModeloExameStruct? maybeFromMap(dynamic data) => data is Map
      ? ModeloExameStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodModeloReceituario': _codModeloReceituario,
        'Nome': _nome,
        'Template': _template,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodModeloReceituario': serializeParam(
          _codModeloReceituario,
          ParamType.int,
        ),
        'Nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'Template': serializeParam(
          _template,
          ParamType.String,
        ),
      }.withoutNulls;

  static ModeloExameStruct fromSerializableMap(Map<String, dynamic> data) =>
      ModeloExameStruct(
        codModeloReceituario: deserializeParam(
          data['CodModeloReceituario'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['Nome'],
          ParamType.String,
          false,
        ),
        template: deserializeParam(
          data['Template'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ModeloExameStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ModeloExameStruct &&
        codModeloReceituario == other.codModeloReceituario &&
        nome == other.nome &&
        template == other.template;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([codModeloReceituario, nome, template]);
}

ModeloExameStruct createModeloExameStruct({
  int? codModeloReceituario,
  String? nome,
  String? template,
}) =>
    ModeloExameStruct(
      codModeloReceituario: codModeloReceituario,
      nome: nome,
      template: template,
    );
