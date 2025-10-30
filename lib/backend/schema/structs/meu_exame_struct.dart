// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeuExameStruct extends BaseStruct {
  MeuExameStruct({
    String? tipo,
    int? codigoInterno,
    String? descricao,
    String? data,
    String? linkUrl,
    ColaboradorStruct? colaborador,
    AgendamentoExameStruct? agendamento,
  })  : _tipo = tipo,
        _codigoInterno = codigoInterno,
        _descricao = descricao,
        _data = data,
        _linkUrl = linkUrl,
        _colaborador = colaborador,
        _agendamento = agendamento;

  // "Tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;

  bool hasTipo() => _tipo != null;

  // "CodigoInterno" field.
  int? _codigoInterno;
  int get codigoInterno => _codigoInterno ?? 0;
  set codigoInterno(int? val) => _codigoInterno = val;

  void incrementCodigoInterno(int amount) =>
      codigoInterno = codigoInterno + amount;

  bool hasCodigoInterno() => _codigoInterno != null;

  // "Descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "Data" field.
  String? _data;
  String get data => _data ?? '';
  set data(String? val) => _data = val;

  bool hasData() => _data != null;

  // "LinkUrl" field.
  String? _linkUrl;
  String get linkUrl => _linkUrl ?? '';
  set linkUrl(String? val) => _linkUrl = val;

  bool hasLinkUrl() => _linkUrl != null;

  // "Colaborador" field.
  ColaboradorStruct? _colaborador;
  ColaboradorStruct get colaborador => _colaborador ?? ColaboradorStruct();
  set colaborador(ColaboradorStruct? val) => _colaborador = val;

  void updateColaborador(Function(ColaboradorStruct) updateFn) {
    updateFn(_colaborador ??= ColaboradorStruct());
  }

  bool hasColaborador() => _colaborador != null;

  // "Agendamento" field.
  AgendamentoExameStruct? _agendamento;
  AgendamentoExameStruct get agendamento =>
      _agendamento ?? AgendamentoExameStruct();
  set agendamento(AgendamentoExameStruct? val) => _agendamento = val;

  void updateAgendamento(Function(AgendamentoExameStruct) updateFn) {
    updateFn(_agendamento ??= AgendamentoExameStruct());
  }

  bool hasAgendamento() => _agendamento != null;

  static MeuExameStruct fromMap(Map<String, dynamic> data) => MeuExameStruct(
        tipo: data['Tipo'] as String?,
        codigoInterno: castToType<int>(data['CodigoInterno']),
        descricao: data['Descricao'] as String?,
        data: data['Data'] as String?,
        linkUrl: data['LinkUrl'] as String?,
        colaborador: data['Colaborador'] is ColaboradorStruct
            ? data['Colaborador']
            : ColaboradorStruct.maybeFromMap(data['Colaborador']),
        agendamento: data['Agendamento'] is AgendamentoExameStruct
            ? data['Agendamento']
            : AgendamentoExameStruct.maybeFromMap(data['Agendamento']),
      );

  static MeuExameStruct? maybeFromMap(dynamic data) =>
      data is Map ? MeuExameStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Tipo': _tipo,
        'CodigoInterno': _codigoInterno,
        'Descricao': _descricao,
        'Data': _data,
        'LinkUrl': _linkUrl,
        'Colaborador': _colaborador?.toMap(),
        'Agendamento': _agendamento?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
        'CodigoInterno': serializeParam(
          _codigoInterno,
          ParamType.int,
        ),
        'Descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'Data': serializeParam(
          _data,
          ParamType.String,
        ),
        'LinkUrl': serializeParam(
          _linkUrl,
          ParamType.String,
        ),
        'Colaborador': serializeParam(
          _colaborador,
          ParamType.DataStruct,
        ),
        'Agendamento': serializeParam(
          _agendamento,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static MeuExameStruct fromSerializableMap(Map<String, dynamic> data) =>
      MeuExameStruct(
        tipo: deserializeParam(
          data['Tipo'],
          ParamType.String,
          false,
        ),
        codigoInterno: deserializeParam(
          data['CodigoInterno'],
          ParamType.int,
          false,
        ),
        descricao: deserializeParam(
          data['Descricao'],
          ParamType.String,
          false,
        ),
        data: deserializeParam(
          data['Data'],
          ParamType.String,
          false,
        ),
        linkUrl: deserializeParam(
          data['LinkUrl'],
          ParamType.String,
          false,
        ),
        colaborador: deserializeStructParam(
          data['Colaborador'],
          ParamType.DataStruct,
          false,
          structBuilder: ColaboradorStruct.fromSerializableMap,
        ),
        agendamento: deserializeStructParam(
          data['Agendamento'],
          ParamType.DataStruct,
          false,
          structBuilder: AgendamentoExameStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MeuExameStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MeuExameStruct &&
        tipo == other.tipo &&
        codigoInterno == other.codigoInterno &&
        descricao == other.descricao &&
        data == other.data &&
        linkUrl == other.linkUrl &&
        colaborador == other.colaborador &&
        agendamento == other.agendamento;
  }

  @override
  int get hashCode => const ListEquality().hash([
        tipo,
        codigoInterno,
        descricao,
        data,
        linkUrl,
        colaborador,
        agendamento
      ]);
}

MeuExameStruct createMeuExameStruct({
  String? tipo,
  int? codigoInterno,
  String? descricao,
  String? data,
  String? linkUrl,
  ColaboradorStruct? colaborador,
  AgendamentoExameStruct? agendamento,
}) =>
    MeuExameStruct(
      tipo: tipo,
      codigoInterno: codigoInterno,
      descricao: descricao,
      data: data,
      linkUrl: linkUrl,
      colaborador: colaborador ?? ColaboradorStruct(),
      agendamento: agendamento ?? AgendamentoExameStruct(),
    );
