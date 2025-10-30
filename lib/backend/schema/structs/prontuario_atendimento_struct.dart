// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProntuarioAtendimentoStruct extends BaseStruct {
  ProntuarioAtendimentoStruct({
    int? codModeloProntuario,
    String? nomeModeloProntuario,
    String? textoProntuario,
    String? cid1,
    String? cid2,
    String? cid3,
    String? cid4,
    String? dataProntuario,
    String? assinaturaPacienteBase64,
    PacienteStruct? paciente,
    AgendamentoStruct? agendamento,
    ColaboradorAtendimentoStruct? colaboradorAtendimento,
  })  : _codModeloProntuario = codModeloProntuario,
        _nomeModeloProntuario = nomeModeloProntuario,
        _textoProntuario = textoProntuario,
        _cid1 = cid1,
        _cid2 = cid2,
        _cid3 = cid3,
        _cid4 = cid4,
        _dataProntuario = dataProntuario,
        _assinaturaPacienteBase64 = assinaturaPacienteBase64,
        _paciente = paciente,
        _agendamento = agendamento,
        _colaboradorAtendimento = colaboradorAtendimento;

  // "CodModeloProntuario" field.
  int? _codModeloProntuario;
  int get codModeloProntuario => _codModeloProntuario ?? 0;
  set codModeloProntuario(int? val) => _codModeloProntuario = val;

  void incrementCodModeloProntuario(int amount) =>
      codModeloProntuario = codModeloProntuario + amount;

  bool hasCodModeloProntuario() => _codModeloProntuario != null;

  // "NomeModeloProntuario" field.
  String? _nomeModeloProntuario;
  String get nomeModeloProntuario => _nomeModeloProntuario ?? '';
  set nomeModeloProntuario(String? val) => _nomeModeloProntuario = val;

  bool hasNomeModeloProntuario() => _nomeModeloProntuario != null;

  // "TextoProntuario" field.
  String? _textoProntuario;
  String get textoProntuario => _textoProntuario ?? '';
  set textoProntuario(String? val) => _textoProntuario = val;

  bool hasTextoProntuario() => _textoProntuario != null;

  // "CID1" field.
  String? _cid1;
  String get cid1 => _cid1 ?? '';
  set cid1(String? val) => _cid1 = val;

  bool hasCid1() => _cid1 != null;

  // "CID2" field.
  String? _cid2;
  String get cid2 => _cid2 ?? '';
  set cid2(String? val) => _cid2 = val;

  bool hasCid2() => _cid2 != null;

  // "CID3" field.
  String? _cid3;
  String get cid3 => _cid3 ?? '';
  set cid3(String? val) => _cid3 = val;

  bool hasCid3() => _cid3 != null;

  // "CID4" field.
  String? _cid4;
  String get cid4 => _cid4 ?? '';
  set cid4(String? val) => _cid4 = val;

  bool hasCid4() => _cid4 != null;

  // "DataProntuario" field.
  String? _dataProntuario;
  String get dataProntuario => _dataProntuario ?? '';
  set dataProntuario(String? val) => _dataProntuario = val;

  bool hasDataProntuario() => _dataProntuario != null;

  // "AssinaturaPacienteBase64" field.
  String? _assinaturaPacienteBase64;
  String get assinaturaPacienteBase64 => _assinaturaPacienteBase64 ?? '';
  set assinaturaPacienteBase64(String? val) => _assinaturaPacienteBase64 = val;

  bool hasAssinaturaPacienteBase64() => _assinaturaPacienteBase64 != null;

  // "Paciente" field.
  PacienteStruct? _paciente;
  PacienteStruct get paciente => _paciente ?? PacienteStruct();
  set paciente(PacienteStruct? val) => _paciente = val;

  void updatePaciente(Function(PacienteStruct) updateFn) {
    updateFn(_paciente ??= PacienteStruct());
  }

  bool hasPaciente() => _paciente != null;

  // "Agendamento" field.
  AgendamentoStruct? _agendamento;
  AgendamentoStruct get agendamento => _agendamento ?? AgendamentoStruct();
  set agendamento(AgendamentoStruct? val) => _agendamento = val;

  void updateAgendamento(Function(AgendamentoStruct) updateFn) {
    updateFn(_agendamento ??= AgendamentoStruct());
  }

  bool hasAgendamento() => _agendamento != null;

  // "ColaboradorAtendimento" field.
  ColaboradorAtendimentoStruct? _colaboradorAtendimento;
  ColaboradorAtendimentoStruct get colaboradorAtendimento =>
      _colaboradorAtendimento ?? ColaboradorAtendimentoStruct();
  set colaboradorAtendimento(ColaboradorAtendimentoStruct? val) =>
      _colaboradorAtendimento = val;

  void updateColaboradorAtendimento(
      Function(ColaboradorAtendimentoStruct) updateFn) {
    updateFn(_colaboradorAtendimento ??= ColaboradorAtendimentoStruct());
  }

  bool hasColaboradorAtendimento() => _colaboradorAtendimento != null;

  static ProntuarioAtendimentoStruct fromMap(Map<String, dynamic> data) =>
      ProntuarioAtendimentoStruct(
        codModeloProntuario: castToType<int>(data['CodModeloProntuario']),
        nomeModeloProntuario: data['NomeModeloProntuario'] as String?,
        textoProntuario: data['TextoProntuario'] as String?,
        cid1: data['CID1'] as String?,
        cid2: data['CID2'] as String?,
        cid3: data['CID3'] as String?,
        cid4: data['CID4'] as String?,
        dataProntuario: data['DataProntuario'] as String?,
        assinaturaPacienteBase64: data['AssinaturaPacienteBase64'] as String?,
        paciente: data['Paciente'] is PacienteStruct
            ? data['Paciente']
            : PacienteStruct.maybeFromMap(data['Paciente']),
        agendamento: data['Agendamento'] is AgendamentoStruct
            ? data['Agendamento']
            : AgendamentoStruct.maybeFromMap(data['Agendamento']),
        colaboradorAtendimento:
            data['ColaboradorAtendimento'] is ColaboradorAtendimentoStruct
                ? data['ColaboradorAtendimento']
                : ColaboradorAtendimentoStruct.maybeFromMap(
                    data['ColaboradorAtendimento']),
      );

  static ProntuarioAtendimentoStruct? maybeFromMap(dynamic data) => data is Map
      ? ProntuarioAtendimentoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CodModeloProntuario': _codModeloProntuario,
        'NomeModeloProntuario': _nomeModeloProntuario,
        'TextoProntuario': _textoProntuario,
        'CID1': _cid1,
        'CID2': _cid2,
        'CID3': _cid3,
        'CID4': _cid4,
        'DataProntuario': _dataProntuario,
        'AssinaturaPacienteBase64': _assinaturaPacienteBase64,
        'Paciente': _paciente?.toMap(),
        'Agendamento': _agendamento?.toMap(),
        'ColaboradorAtendimento': _colaboradorAtendimento?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodModeloProntuario': serializeParam(
          _codModeloProntuario,
          ParamType.int,
        ),
        'NomeModeloProntuario': serializeParam(
          _nomeModeloProntuario,
          ParamType.String,
        ),
        'TextoProntuario': serializeParam(
          _textoProntuario,
          ParamType.String,
        ),
        'CID1': serializeParam(
          _cid1,
          ParamType.String,
        ),
        'CID2': serializeParam(
          _cid2,
          ParamType.String,
        ),
        'CID3': serializeParam(
          _cid3,
          ParamType.String,
        ),
        'CID4': serializeParam(
          _cid4,
          ParamType.String,
        ),
        'DataProntuario': serializeParam(
          _dataProntuario,
          ParamType.String,
        ),
        'AssinaturaPacienteBase64': serializeParam(
          _assinaturaPacienteBase64,
          ParamType.String,
        ),
        'Paciente': serializeParam(
          _paciente,
          ParamType.DataStruct,
        ),
        'Agendamento': serializeParam(
          _agendamento,
          ParamType.DataStruct,
        ),
        'ColaboradorAtendimento': serializeParam(
          _colaboradorAtendimento,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ProntuarioAtendimentoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProntuarioAtendimentoStruct(
        codModeloProntuario: deserializeParam(
          data['CodModeloProntuario'],
          ParamType.int,
          false,
        ),
        nomeModeloProntuario: deserializeParam(
          data['NomeModeloProntuario'],
          ParamType.String,
          false,
        ),
        textoProntuario: deserializeParam(
          data['TextoProntuario'],
          ParamType.String,
          false,
        ),
        cid1: deserializeParam(
          data['CID1'],
          ParamType.String,
          false,
        ),
        cid2: deserializeParam(
          data['CID2'],
          ParamType.String,
          false,
        ),
        cid3: deserializeParam(
          data['CID3'],
          ParamType.String,
          false,
        ),
        cid4: deserializeParam(
          data['CID4'],
          ParamType.String,
          false,
        ),
        dataProntuario: deserializeParam(
          data['DataProntuario'],
          ParamType.String,
          false,
        ),
        assinaturaPacienteBase64: deserializeParam(
          data['AssinaturaPacienteBase64'],
          ParamType.String,
          false,
        ),
        paciente: deserializeStructParam(
          data['Paciente'],
          ParamType.DataStruct,
          false,
          structBuilder: PacienteStruct.fromSerializableMap,
        ),
        agendamento: deserializeStructParam(
          data['Agendamento'],
          ParamType.DataStruct,
          false,
          structBuilder: AgendamentoStruct.fromSerializableMap,
        ),
        colaboradorAtendimento: deserializeStructParam(
          data['ColaboradorAtendimento'],
          ParamType.DataStruct,
          false,
          structBuilder: ColaboradorAtendimentoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProntuarioAtendimentoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProntuarioAtendimentoStruct &&
        codModeloProntuario == other.codModeloProntuario &&
        nomeModeloProntuario == other.nomeModeloProntuario &&
        textoProntuario == other.textoProntuario &&
        cid1 == other.cid1 &&
        cid2 == other.cid2 &&
        cid3 == other.cid3 &&
        cid4 == other.cid4 &&
        dataProntuario == other.dataProntuario &&
        assinaturaPacienteBase64 == other.assinaturaPacienteBase64 &&
        paciente == other.paciente &&
        agendamento == other.agendamento &&
        colaboradorAtendimento == other.colaboradorAtendimento;
  }

  @override
  int get hashCode => const ListEquality().hash([
        codModeloProntuario,
        nomeModeloProntuario,
        textoProntuario,
        cid1,
        cid2,
        cid3,
        cid4,
        dataProntuario,
        assinaturaPacienteBase64,
        paciente,
        agendamento,
        colaboradorAtendimento
      ]);
}

ProntuarioAtendimentoStruct createProntuarioAtendimentoStruct({
  int? codModeloProntuario,
  String? nomeModeloProntuario,
  String? textoProntuario,
  String? cid1,
  String? cid2,
  String? cid3,
  String? cid4,
  String? dataProntuario,
  String? assinaturaPacienteBase64,
  PacienteStruct? paciente,
  AgendamentoStruct? agendamento,
  ColaboradorAtendimentoStruct? colaboradorAtendimento,
}) =>
    ProntuarioAtendimentoStruct(
      codModeloProntuario: codModeloProntuario,
      nomeModeloProntuario: nomeModeloProntuario,
      textoProntuario: textoProntuario,
      cid1: cid1,
      cid2: cid2,
      cid3: cid3,
      cid4: cid4,
      dataProntuario: dataProntuario,
      assinaturaPacienteBase64: assinaturaPacienteBase64,
      paciente: paciente ?? PacienteStruct(),
      agendamento: agendamento ?? AgendamentoStruct(),
      colaboradorAtendimento:
          colaboradorAtendimento ?? ColaboradorAtendimentoStruct(),
    );
