// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDataStruct extends BaseStruct {
  UserDataStruct({
    int? codUsuario,
    String? nome,
    String? cpf,
    String? email,
    String? senha,
    String? dtNasc,
    String? telefone,
    String? celular,
    String? cep,
    String? endereco,
    String? numero,
    String? complemento,
    String? bairro,
    String? cidade,
    String? sexo,
    String? facebookID,
    String? semanasGestacao,
    String? diasGestacao,
    String? dtParto,
    int? codPlano,
    List<int>? codPlanos,
  })  : _codUsuario = codUsuario,
        _nome = nome,
        _cpf = cpf,
        _email = email,
        _senha = senha,
        _dtNasc = dtNasc,
        _telefone = telefone,
        _celular = celular,
        _cep = cep,
        _endereco = endereco,
        _numero = numero,
        _complemento = complemento,
        _bairro = bairro,
        _cidade = cidade,
        _sexo = sexo,
        _facebookID = facebookID,
        _semanasGestacao = semanasGestacao,
        _diasGestacao = diasGestacao,
        _dtParto = dtParto,
        _codPlano = codPlano,
        _codPlanos = codPlanos;

  // "CodUsuario" field.
  int? _codUsuario;
  int get codUsuario => _codUsuario ?? 0;
  set codUsuario(int? val) => _codUsuario = val;

  void incrementCodUsuario(int amount) => codUsuario = codUsuario + amount;

  bool hasCodUsuario() => _codUsuario != null;

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "CPF" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  set cpf(String? val) => _cpf = val;

  bool hasCpf() => _cpf != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "Senha" field.
  String? _senha;
  String get senha => _senha ?? '';
  set senha(String? val) => _senha = val;

  bool hasSenha() => _senha != null;

  // "DtNasc" field.
  String? _dtNasc;
  String get dtNasc => _dtNasc ?? '';
  set dtNasc(String? val) => _dtNasc = val;

  bool hasDtNasc() => _dtNasc != null;

  // "Telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  set telefone(String? val) => _telefone = val;

  bool hasTelefone() => _telefone != null;

  // "Celular" field.
  String? _celular;
  String get celular => _celular ?? '';
  set celular(String? val) => _celular = val;

  bool hasCelular() => _celular != null;

  // "CEP" field.
  String? _cep;
  String get cep => _cep ?? '';
  set cep(String? val) => _cep = val;

  bool hasCep() => _cep != null;

  // "Endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  set endereco(String? val) => _endereco = val;

  bool hasEndereco() => _endereco != null;

  // "Numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  set numero(String? val) => _numero = val;

  bool hasNumero() => _numero != null;

  // "Complemento" field.
  String? _complemento;
  String get complemento => _complemento ?? '';
  set complemento(String? val) => _complemento = val;

  bool hasComplemento() => _complemento != null;

  // "Bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  set bairro(String? val) => _bairro = val;

  bool hasBairro() => _bairro != null;

  // "Cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  set cidade(String? val) => _cidade = val;

  bool hasCidade() => _cidade != null;

  // "Sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  set sexo(String? val) => _sexo = val;

  bool hasSexo() => _sexo != null;

  // "FacebookID" field.
  String? _facebookID;
  String get facebookID => _facebookID ?? '';
  set facebookID(String? val) => _facebookID = val;

  bool hasFacebookID() => _facebookID != null;

  // "SemanasGestacao" field.
  String? _semanasGestacao;
  String get semanasGestacao => _semanasGestacao ?? '';
  set semanasGestacao(String? val) => _semanasGestacao = val;

  bool hasSemanasGestacao() => _semanasGestacao != null;

  // "DiasGestacao" field.
  String? _diasGestacao;
  String get diasGestacao => _diasGestacao ?? '';
  set diasGestacao(String? val) => _diasGestacao = val;

  bool hasDiasGestacao() => _diasGestacao != null;

  // "DtParto" field.
  String? _dtParto;
  String get dtParto => _dtParto ?? '';
  set dtParto(String? val) => _dtParto = val;

  bool hasDtParto() => _dtParto != null;

  // "CodPlano" field.
  int? _codPlano;
  int get codPlano => _codPlano ?? 0;
  set codPlano(int? val) => _codPlano = val;

  void incrementCodPlano(int amount) => codPlano = codPlano + amount;

  bool hasCodPlano() => _codPlano != null;

  // "CodPlanos" field.
  List<int>? _codPlanos;
  List<int> get codPlanos => _codPlanos ?? const [];
  set codPlanos(List<int>? val) => _codPlanos = val;

  void updateCodPlanos(Function(List<int>) updateFn) {
    updateFn(_codPlanos ??= []);
  }

  bool hasCodPlanos() => _codPlanos != null;

  static UserDataStruct fromMap(Map<String, dynamic> data) => UserDataStruct(
        codUsuario: castToType<int>(data['CodUsuario']),
        nome: data['Nome'] as String?,
        cpf: data['CPF'] as String?,
        email: data['Email'] as String?,
        senha: data['Senha'] as String?,
        dtNasc: data['DtNasc'] as String?,
        telefone: data['Telefone'] as String?,
        celular: data['Celular'] as String?,
        cep: data['CEP'] as String?,
        endereco: data['Endereco'] as String?,
        numero: data['Numero'] as String?,
        complemento: data['Complemento'] as String?,
        bairro: data['Bairro'] as String?,
        cidade: data['Cidade'] as String?,
        sexo: data['Sexo'] as String?,
        facebookID: data['FacebookID'] as String?,
        semanasGestacao: data['SemanasGestacao'] as String?,
        diasGestacao: data['DiasGestacao'] as String?,
        dtParto: data['DtParto'] as String?,
        codPlano: castToType<int>(data['CodPlano']),
        codPlanos: getDataList(data['CodPlanos']),
      );

  static UserDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'CodUsuario': _codUsuario,
        'Nome': _nome,
        'CPF': _cpf,
        'Email': _email,
        'Senha': _senha,
        'DtNasc': _dtNasc,
        'Telefone': _telefone,
        'Celular': _celular,
        'CEP': _cep,
        'Endereco': _endereco,
        'Numero': _numero,
        'Complemento': _complemento,
        'Bairro': _bairro,
        'Cidade': _cidade,
        'Sexo': _sexo,
        'FacebookID': _facebookID,
        'SemanasGestacao': _semanasGestacao,
        'DiasGestacao': _diasGestacao,
        'DtParto': _dtParto,
        'CodPlano': _codPlano,
        'CodPlanos': _codPlanos,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CodUsuario': serializeParam(
          _codUsuario,
          ParamType.int,
        ),
        'Nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'CPF': serializeParam(
          _cpf,
          ParamType.String,
        ),
        'Email': serializeParam(
          _email,
          ParamType.String,
        ),
        'Senha': serializeParam(
          _senha,
          ParamType.String,
        ),
        'DtNasc': serializeParam(
          _dtNasc,
          ParamType.String,
        ),
        'Telefone': serializeParam(
          _telefone,
          ParamType.String,
        ),
        'Celular': serializeParam(
          _celular,
          ParamType.String,
        ),
        'CEP': serializeParam(
          _cep,
          ParamType.String,
        ),
        'Endereco': serializeParam(
          _endereco,
          ParamType.String,
        ),
        'Numero': serializeParam(
          _numero,
          ParamType.String,
        ),
        'Complemento': serializeParam(
          _complemento,
          ParamType.String,
        ),
        'Bairro': serializeParam(
          _bairro,
          ParamType.String,
        ),
        'Cidade': serializeParam(
          _cidade,
          ParamType.String,
        ),
        'Sexo': serializeParam(
          _sexo,
          ParamType.String,
        ),
        'FacebookID': serializeParam(
          _facebookID,
          ParamType.String,
        ),
        'SemanasGestacao': serializeParam(
          _semanasGestacao,
          ParamType.String,
        ),
        'DiasGestacao': serializeParam(
          _diasGestacao,
          ParamType.String,
        ),
        'DtParto': serializeParam(
          _dtParto,
          ParamType.String,
        ),
        'CodPlano': serializeParam(
          _codPlano,
          ParamType.int,
        ),
        'CodPlanos': serializeParam(
          _codPlanos,
          ParamType.int,
          isList: true,
        ),
      }.withoutNulls;

  static UserDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserDataStruct(
        codUsuario: deserializeParam(
          data['CodUsuario'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['Nome'],
          ParamType.String,
          false,
        ),
        cpf: deserializeParam(
          data['CPF'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['Email'],
          ParamType.String,
          false,
        ),
        senha: deserializeParam(
          data['Senha'],
          ParamType.String,
          false,
        ),
        dtNasc: deserializeParam(
          data['DtNasc'],
          ParamType.String,
          false,
        ),
        telefone: deserializeParam(
          data['Telefone'],
          ParamType.String,
          false,
        ),
        celular: deserializeParam(
          data['Celular'],
          ParamType.String,
          false,
        ),
        cep: deserializeParam(
          data['CEP'],
          ParamType.String,
          false,
        ),
        endereco: deserializeParam(
          data['Endereco'],
          ParamType.String,
          false,
        ),
        numero: deserializeParam(
          data['Numero'],
          ParamType.String,
          false,
        ),
        complemento: deserializeParam(
          data['Complemento'],
          ParamType.String,
          false,
        ),
        bairro: deserializeParam(
          data['Bairro'],
          ParamType.String,
          false,
        ),
        cidade: deserializeParam(
          data['Cidade'],
          ParamType.String,
          false,
        ),
        sexo: deserializeParam(
          data['Sexo'],
          ParamType.String,
          false,
        ),
        facebookID: deserializeParam(
          data['FacebookID'],
          ParamType.String,
          false,
        ),
        semanasGestacao: deserializeParam(
          data['SemanasGestacao'],
          ParamType.String,
          false,
        ),
        diasGestacao: deserializeParam(
          data['DiasGestacao'],
          ParamType.String,
          false,
        ),
        dtParto: deserializeParam(
          data['DtParto'],
          ParamType.String,
          false,
        ),
        codPlano: deserializeParam(
          data['CodPlano'],
          ParamType.int,
          false,
        ),
        codPlanos: deserializeParam<int>(
          data['CodPlanos'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'UserDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserDataStruct &&
        codUsuario == other.codUsuario &&
        nome == other.nome &&
        cpf == other.cpf &&
        email == other.email &&
        senha == other.senha &&
        dtNasc == other.dtNasc &&
        telefone == other.telefone &&
        celular == other.celular &&
        cep == other.cep &&
        endereco == other.endereco &&
        numero == other.numero &&
        complemento == other.complemento &&
        bairro == other.bairro &&
        cidade == other.cidade &&
        sexo == other.sexo &&
        facebookID == other.facebookID &&
        semanasGestacao == other.semanasGestacao &&
        diasGestacao == other.diasGestacao &&
        dtParto == other.dtParto &&
        codPlano == other.codPlano &&
        listEquality.equals(codPlanos, other.codPlanos);
  }

  @override
  int get hashCode => const ListEquality().hash([
        codUsuario,
        nome,
        cpf,
        email,
        senha,
        dtNasc,
        telefone,
        celular,
        cep,
        endereco,
        numero,
        complemento,
        bairro,
        cidade,
        sexo,
        facebookID,
        semanasGestacao,
        diasGestacao,
        dtParto,
        codPlano,
        codPlanos
      ]);
}

UserDataStruct createUserDataStruct({
  int? codUsuario,
  String? nome,
  String? cpf,
  String? email,
  String? senha,
  String? dtNasc,
  String? telefone,
  String? celular,
  String? cep,
  String? endereco,
  String? numero,
  String? complemento,
  String? bairro,
  String? cidade,
  String? sexo,
  String? facebookID,
  String? semanasGestacao,
  String? diasGestacao,
  String? dtParto,
  int? codPlano,
}) =>
    UserDataStruct(
      codUsuario: codUsuario,
      nome: nome,
      cpf: cpf,
      email: email,
      senha: senha,
      dtNasc: dtNasc,
      telefone: telefone,
      celular: celular,
      cep: cep,
      endereco: endereco,
      numero: numero,
      complemento: complemento,
      bairro: bairro,
      cidade: cidade,
      sexo: sexo,
      facebookID: facebookID,
      semanasGestacao: semanasGestacao,
      diasGestacao: diasGestacao,
      dtParto: dtParto,
      codPlano: codPlano,
    );
