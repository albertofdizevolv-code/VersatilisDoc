import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start DizinvolveClientApi Group Code

class DizinvolveClientApiGroup {
  static String getBaseUrl({
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) =>
      'https://sistema.versatilis.com.br/Dizevolv/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
    'Content-Type': 'application/json',
  };
  static CadastrarUsuarioSimplesCall cadastrarUsuarioSimplesCall =
      CadastrarUsuarioSimplesCall();
  static AlterarUsuarioCall alterarUsuarioCall = AlterarUsuarioCall();
  static LoginUserCall loginUserCall = LoginUserCall();
  static ListarEspecialidadesCall listarEspecialidadesCall =
      ListarEspecialidadesCall();
  static ListarEspecialidadePorNomeCall listarEspecialidadePorNomeCall =
      ListarEspecialidadePorNomeCall();
  static ListarProcedimentosCall listarProcedimentosCall =
      ListarProcedimentosCall();
  static ListarConsultasAgendadasCall listarConsultasAgendadasCall =
      ListarConsultasAgendadasCall();
  static MarcarAgendamentoCall marcarAgendamentoCall = MarcarAgendamentoCall();
  static ListarUnidadesPorEspecialidadeCall listarUnidadesPorEspecialidadeCall =
      ListarUnidadesPorEspecialidadeCall();
  static ListarProfissionaisPorEspecialidadeCall
      listarProfissionaisPorEspecialidadeCall =
      ListarProfissionaisPorEspecialidadeCall();
  static ListarProfissionaisPorProcedimentoCall
      listarProfissionaisPorProcedimentoCall =
      ListarProfissionaisPorProcedimentoCall();
  static ListarUnidadePorNomeCall listarUnidadePorNomeCall =
      ListarUnidadePorNomeCall();
  static TodasUnidadesDisponiveisCall todasUnidadesDisponiveisCall =
      TodasUnidadesDisponiveisCall();
  static ListarHistoricoAgendamentosCall listarHistoricoAgendamentosCall =
      ListarHistoricoAgendamentosCall();
  static ListarHorarioDoColaboradorCall listarHorarioDoColaboradorCall =
      ListarHorarioDoColaboradorCall();
  static AtualizarUsuarioCall atualizarUsuarioCall = AtualizarUsuarioCall();
  static PrecosPorColaboradorCall precosPorColaboradorCall =
      PrecosPorColaboradorCall();
  static ConveniosDoUsurarioCall conveniosDoUsurarioCall =
      ConveniosDoUsurarioCall();
  static LIstarPacotesPorUnidadeCall lIstarPacotesPorUnidadeCall =
      LIstarPacotesPorUnidadeCall();
  static ConvenioEspecialidadeCall convenioEspecialidadeCall =
      ConvenioEspecialidadeCall();
  static ConvenioUsuarioAtivoCall convenioUsuarioAtivoCall =
      ConvenioUsuarioAtivoCall();
  static ResultadoExamesCall resultadoExamesCall = ResultadoExamesCall();
  static VenderPacoteCall venderPacoteCall = VenderPacoteCall();
  static ListarPacotesVendidosCall listarPacotesVendidosCall =
      ListarPacotesVendidosCall();
  static PrecoDaConsultaMedicoGeralCall precoDaConsultaMedicoGeralCall =
      PrecoDaConsultaMedicoGeralCall();
  static ListarHorarioExameCall listarHorarioExameCall =
      ListarHorarioExameCall();
}

class CadastrarUsuarioSimplesCall {
  Future<ApiCallResponse> call({
    String? nome = 'Alberto Ribeiro neto',
    String? cpf = '856.892.319-84',
    String? email = 'fennris123@gmail.com',
    String? senha = 'senha12345',
    String? dtNascimento = '1992-05-27',
    String? sexo = 'M',
    String? telefone = '1133445566',
    String? celular = '11999887766',
    String? bairro = 'centro',
    String? numero = '12',
    String? cidade = 'bamabam',
    String? complemento = 'casa',
    String? endereco = 'rua dois',
    String? cep = '39000000',
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "Nome": "${escapeStringForJson(nome)}",
  "CPF": "${escapeStringForJson(cpf)}",
  "Email": "${escapeStringForJson(email)}",
  "Senha": "${escapeStringForJson(senha)}",
  "DtNasc": "${escapeStringForJson(dtNascimento)}",
  "Sexo": "${escapeStringForJson(sexo)}",
  "Telefone": "${escapeStringForJson(telefone)}",
  "Celular": "${escapeStringForJson(telefone)}",
  "CEP": "${escapeStringForJson(cep)}",
  "Endereco": "${escapeStringForJson(endereco)}",
  "Numero": "${escapeStringForJson(numero)}",
  "Complemento": "${escapeStringForJson(complemento)}",
  "Bairro": "${escapeStringForJson(bairro)}",
  "Cidade": "${escapeStringForJson(cidade)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CadastrarUsuarioSimples',
      apiUrl: '${baseUrl}/Login/CadastrarUsuarioBasico',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Nome''',
      ));
}

class AlterarUsuarioCall {
  Future<ApiCallResponse> call({
    String? nome = 'Alberto Ribeiro neto',
    String? cpf = '856.892.319-84',
    String? email = 'fennris123@gmail.com',
    String? senha = 'senha12345',
    String? dtNascimento = '1992-05-27',
    String? sexo = 'M',
    String? telefone = '1133445566',
    String? celular = '11999887766',
    String? bairro = 'centro',
    String? numero = '12',
    String? cidade = 'bamabam',
    String? complemento = 'casa',
    String? endereco = 'rua dois',
    String? cep = '39000000',
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "Nome": "${escapeStringForJson(nome)}",
  "CPF": "${escapeStringForJson(cpf)}",
  "Email": "${escapeStringForJson(email)}",
  "Senha": "${escapeStringForJson(senha)}",
  "DtNasc": "${escapeStringForJson(dtNascimento)}",
  "Sexo": "${escapeStringForJson(sexo)}",
  "Telefone": "${escapeStringForJson(telefone)}",
  "Celular": "${escapeStringForJson(telefone)}",
  "CEP": "${escapeStringForJson(cep)}",
  "Endereco": "${escapeStringForJson(endereco)}",
  "Numero": "${escapeStringForJson(numero)}",
  "Complemento": "${escapeStringForJson(complemento)}",
  "Bairro": "${escapeStringForJson(bairro)}",
  "Cidade": "${escapeStringForJson(cidade)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Alterar Usuario',
      apiUrl: '${baseUrl}/Login/AlterarUsuario',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Nome''',
      ));
}

class LoginUserCall {
  Future<ApiCallResponse> call({
    String? login = '',
    String? senha = '',
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
    "Login": "${escapeStringForJson(login)}",
    "Senha": "${escapeStringForJson(senha)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LoginUser',
      apiUrl: '${baseUrl}/Login/Login',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListarEspecialidadesCall {
  Future<ApiCallResponse> call({
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Listar Especialidades',
      apiUrl: '${baseUrl}/Especialidade/Especialidades',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListarEspecialidadePorNomeCall {
  Future<ApiCallResponse> call({
    String? nomeEspecialidade = '',
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Listar Especialidade Por Nome',
      apiUrl:
          '${baseUrl}/Especialidade/EspecialidadePorNome?nomeEspecialidade=${nomeEspecialidade}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListarProcedimentosCall {
  Future<ApiCallResponse> call({
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Listar Procedimentos',
      apiUrl: '${baseUrl}/Procedimento/Procedimentos?NomeProcedimento',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListarConsultasAgendadasCall {
  Future<ApiCallResponse> call({
    int? userId = 6021,
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Listar Consultas Agendadas',
      apiUrl:
          '${baseUrl}/Agendamento/ConsultasAgendadas?codUsuario=${userId}&bitAgendadas=true&bitAceitas=&bitConfirmadas=false&bitCanceladas=false',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MarcarAgendamentoCall {
  Future<ApiCallResponse> call({
    int? codUnidade,
    int? codEspecialidade,
    int? codPlano,
    int? codHorario,
    String? data = '',
    int? codUsuario,
    int? codColaborador,
    int? codProcedimento,
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "CodUnidade": ${codUnidade},
  "CodEspecialidade": ${codEspecialidade},
  "CodPlano": ${codPlano},
  "CodHorario": ${codHorario},
  "Data": "${escapeStringForJson(data)}",
  "CodUsuario": ${codUsuario},
  "CodColaborador": ${codColaborador},
  "CodProcedimento": ${codProcedimento},
  "BitTelemedicina": "´true´"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Marcar Agendamento',
      apiUrl: '${baseUrl}/Agenda/ConfirmarAgendamento',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Message''',
      ));
  int? codAgendamento(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.CodAgendamento''',
      ));
  int? codigHorario(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.CodHorario''',
      ));
}

class ListarUnidadesPorEspecialidadeCall {
  Future<ApiCallResponse> call({
    int? codigo,
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Listar Unidades por Especialidade',
      apiUrl:
          '${baseUrl}/Unidade/UnidadesPorEspecialidade?codEspecialidade=${codigo}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListarProfissionaisPorEspecialidadeCall {
  Future<ApiCallResponse> call({
    int? codEspecialidade,
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Listar Profissionais por especialidade',
      apiUrl:
          '${baseUrl}/Colaborador/Profissional?CodEspecialidade=${codEspecialidade}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListarProfissionaisPorProcedimentoCall {
  Future<ApiCallResponse> call({
    int? codProcedimento,
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Listar Profissionais por Procedimento',
      apiUrl:
          '${baseUrl}/Colaborador/ProfissionalByProcedimento?CodProcedimento=${codProcedimento}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListarUnidadePorNomeCall {
  Future<ApiCallResponse> call({
    String? nome = '',
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Listar UnidadePorNome',
      apiUrl: '${baseUrl}/Unidade/Unidade?NomeUnidade=${nome}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TodasUnidadesDisponiveisCall {
  Future<ApiCallResponse> call({
    String? nome = '',
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Todas Unidades Disponiveis',
      apiUrl: '${baseUrl}/Unidade/UnidadePorNome',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListarHistoricoAgendamentosCall {
  Future<ApiCallResponse> call({
    int? codigo,
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Listar Historico Agendamentos',
      apiUrl:
          '${baseUrl}/Agendamento/HistoricoAgendamento?codUsuario=${codigo}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListarHorarioDoColaboradorCall {
  Future<ApiCallResponse> call({
    int? codigo,
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Listar Horario do Colaborador',
      apiUrl: '${baseUrl}/Agenda/Datas?CodColaborador=${codigo}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AtualizarUsuarioCall {
  Future<ApiCallResponse> call({
    String? nome = '',
    String? cpf = '',
    String? celular = '',
    String? email = '',
    String? senha = '',
    String? dataNasc = '',
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "Nome": "${escapeStringForJson(nome)}",
  "CPF": "${escapeStringForJson(cpf)}",
  "Email": "${escapeStringForJson(email)}",
  "Senha": "${escapeStringForJson(senha)}",
  "DtNasc": "${escapeStringForJson(dataNasc)}",
  "Celular": "${escapeStringForJson(celular)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Atualizar Usuario',
      apiUrl: '${baseUrl}/Login/AlterarUsuario',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Nome''',
      ));
  String? cpf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.CPF''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Email''',
      ));
  String? senha(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Senha''',
      ));
  String? dataNasc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.DtNasc''',
      ));
  String? celular(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Celular''',
      ));
}

class PrecosPorColaboradorCall {
  Future<ApiCallResponse> call({
    int? codColaborador,
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Precos por Colaborador',
      apiUrl: '${baseUrl}/Colaborador/Precos?codColaborador=${codColaborador}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConveniosDoUsurarioCall {
  Future<ApiCallResponse> call({
    int? codEspecialidade,
    int? codUsuario,
    int? codUnidade,
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Convenios do Usurario',
      apiUrl:
          '${baseUrl}/Convenio/Planos?codUnidade=${codUnidade}&codEspecialidade=${codEspecialidade}&codUsuario=${codUsuario}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LIstarPacotesPorUnidadeCall {
  Future<ApiCallResponse> call({
    int? codPlano,
    int? codUnidade,
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'LIstar Pacotes Por Unidade',
      apiUrl:
          '${baseUrl}/Pacote/ListarPacotes?CodPlano=${codPlano}&CodUnidade=${codUnidade}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConvenioEspecialidadeCall {
  Future<ApiCallResponse> call({
    int? codUnidade,
    int? codEspecialidade,
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'ConvenioEspecialidade',
      apiUrl:
          '${baseUrl}/Convenio/Planos?codUnidade=${codUnidade}&codEspecialidade=${codEspecialidade}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConvenioUsuarioAtivoCall {
  Future<ApiCallResponse> call({
    int? codUnidade,
    int? codEspecialidade,
    int? codUsuario,
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Convenio Usuario Ativo',
      apiUrl:
          '${baseUrl}/Convenio/Planos?codUnidade=${codUnidade}&codEspecialidade=${codEspecialidade}&codUsuario=${codUsuario}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ResultadoExamesCall {
  Future<ApiCallResponse> call({
    int? codUsuario,
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Resultado Exames',
      apiUrl:
          '${baseUrl}/Procedimento/ResultadosExames?codUsuario=${codUsuario}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? tipo(dynamic response) => (getJsonField(
        response,
        r'''$[:].Tipo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? descricao(dynamic response) => (getJsonField(
        response,
        r'''$[:].Descricao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? codInterno(dynamic response) => (getJsonField(
        response,
        r'''$[:].CodigoInterno''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? data(dynamic response) => (getJsonField(
        response,
        r'''$[:].Data''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? nomeMedico(dynamic response) => (getJsonField(
        response,
        r'''$[:].Colaborador.Nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? urlPdf(dynamic response) => (getJsonField(
        response,
        r'''$[:].LinkUrl''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class VenderPacoteCall {
  Future<ApiCallResponse> call({
    int? codUsuario,
    int? codPlano,
    int? codPacote,
    String? numCarteirinha = '',
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "CodUsuario": ${codUsuario},
  "CodPlano": ${codPlano},
  "CodPacote": ${codPacote},
  "NumCarteirinha": "${escapeStringForJson(numCarteirinha)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Vender Pacote',
      apiUrl: '${baseUrl}/Pacote/VenderPacote',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Message''',
      ));
  int? codigoVenda(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.CodigoVenda''',
      ));
}

class ListarPacotesVendidosCall {
  Future<ApiCallResponse> call({
    int? codUsuario,
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Listar Pacotes Vendidos',
      apiUrl:
          '${baseUrl}/Pacote/ListarPacotesVendidos?CodUsuario=${codUsuario}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PrecoDaConsultaMedicoGeralCall {
  Future<ApiCallResponse> call({
    int? codPlano,
    int? especialidade,
    int? codColaborador,
    int? codUnidade,
    int? procedimento,
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Preco da Consulta Medico Geral',
      apiUrl:
          '${baseUrl}/Liquidacao/Preco?CodPlano=${codPlano}&CodEspecialidade=${especialidade}&CodColaborador=${codColaborador}&CodUnidade=${codUnidade}&CodProcedimento=${procedimento}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  double? preco(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.Preco''',
      ));
}

class ListarHorarioExameCall {
  Future<ApiCallResponse> call({
    int? codUnidade,
    int? codProcedimento,
    int? codUsuario,
    String? diaSelecionado = '',
    int? codPlano,
    int? codEspecialidade,
    String? token =
        '-NB4x2EHgSujAX3iVPuafQITZp4UcdfkvLEpkTNFUBTvWBxj-3X3g082_7bKRi_lvxQpjqe3A-lhVnxV4RG9l-VdG-GzBoyN6eV48ogOlsRev03PrbUuvBqvAxuazFE1QVqu1WH2eR98GIll9_QhueS_dTUBXk31lm_cJIHdm6axztE_Y7iNIdHcZAQwVzOZ_5a1mxga1i1Zo9un-OK4JlKYfaj-y3JeTHHVkXW3ZTSCLKoYWPI9FmS4O_5yEQVC',
  }) async {
    final baseUrl = DizinvolveClientApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Listar Horario Exame',
      apiUrl:
          '${baseUrl}/Agenda/HorariosDisponiveis?codUnidade=${codUnidade}&codEspecialidade=${codEspecialidade}&codPlano=${codPlano}&diaSelecionado=${diaSelecionado}&codUsuario=${codUsuario}&codProcedimento=${codProcedimento}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End DizinvolveClientApi Group Code

/// Start DizinvolveAdminApi Group Code

class DizinvolveAdminApiGroup {
  static String getBaseUrl({
    String? token = 'ce1a4452-8601-44a1-a375-1aa4195f6e5c',
  }) =>
      'https://sistema.versatilis.com.br/Dizevolv/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
    'Content-Type': 'application/json',
  };
  static BuscarUsuarioCPFCall buscarUsuarioCPFCall = BuscarUsuarioCPFCall();
  static BuscarUsuarioNomeCall buscarUsuarioNomeCall = BuscarUsuarioNomeCall();
  static PainelDeAlertaCall painelDeAlertaCall = PainelDeAlertaCall();
  static ResultadoDoExameCall resultadoDoExameCall = ResultadoDoExameCall();
  static PutEmAtendimentoCall putEmAtendimentoCall = PutEmAtendimentoCall();
  static ObterProntuarioCodUsuarioCall obterProntuarioCodUsuarioCall =
      ObterProntuarioCodUsuarioCall();
  static ObterOsGruposDeExamesCall obterOsGruposDeExamesCall =
      ObterOsGruposDeExamesCall();
  static CancelarAgendamentoCall cancelarAgendamentoCall =
      CancelarAgendamentoCall();
  static ConfirmarAgendamentoCall confirmarAgendamentoCall =
      ConfirmarAgendamentoCall();
  static ModeloReceituarioExameCall modeloReceituarioExameCall =
      ModeloReceituarioExameCall();
  static GravarProntuarioCall gravarProntuarioCall = GravarProntuarioCall();
  static SolicitarExameCall solicitarExameCall = SolicitarExameCall();
}

class BuscarUsuarioCPFCall {
  Future<ApiCallResponse> call({
    String? cpf = '',
    String? token = 'ce1a4452-8601-44a1-a375-1aa4195f6e5c',
  }) async {
    final baseUrl = DizinvolveAdminApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Buscar Usuario CPF',
      apiUrl: '${baseUrl}/Login/DadosUsuario?UserCPF=${cpf}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarUsuarioNomeCall {
  Future<ApiCallResponse> call({
    String? nome = '',
    String? token = 'ce1a4452-8601-44a1-a375-1aa4195f6e5c',
  }) async {
    final baseUrl = DizinvolveAdminApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Buscar Usuario Nome',
      apiUrl: '${baseUrl}/Login/DadosUsuarioPorNome?Nome==${nome}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PainelDeAlertaCall {
  Future<ApiCallResponse> call({
    String? data = '',
    int? codUnidade,
    bool? filtrarConsulta,
    bool? filtrarProcedimento,
    bool? filtrarRetorno,
    bool? filtrarEncaixe,
    bool? filtrarPreferencial,
    bool? filtrarTelemedicina,
    bool? filtrarHorarioVago,
    bool? filtrarJaAtendido,
    bool? filtrarNaEspera,
    bool? filtrarEmAtendimento,
    bool? filtrarNaEsperaPosExames,
    String? token = 'ce1a4452-8601-44a1-a375-1aa4195f6e5c',
  }) async {
    final baseUrl = DizinvolveAdminApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Painel de Alerta',
      apiUrl: '${baseUrl}/Colaborador/PainelAlerta',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {
        'Data': data,
        'CodUnidade': codUnidade,
        'FiltrarConsulta': filtrarConsulta,
        'FiltrarProcedimento': filtrarProcedimento,
        'FiltrarRetorno': filtrarRetorno,
        'FiltrarEncaixe': filtrarEncaixe,
        'FiltrarPreferencial': filtrarPreferencial,
        'FiltrarTelemedicina': filtrarTelemedicina,
        'FiltrarHorarioVago': filtrarHorarioVago,
        'FiltrarJaAtendido': filtrarJaAtendido,
        'FiltrarNaEspera': filtrarNaEspera,
        'FiltrarEmAtendimento': filtrarEmAtendimento,
        'FiltrarNaEsperaPosExames': filtrarNaEsperaPosExames,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ResultadoDoExameCall {
  Future<ApiCallResponse> call({
    int? codUsuario,
    String? token = 'ce1a4452-8601-44a1-a375-1aa4195f6e5c',
  }) async {
    final baseUrl = DizinvolveAdminApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Resultado do Exame',
      apiUrl:
          '${baseUrl}/Procedimento/ResultadosExames?codUsuario=${codUsuario}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PutEmAtendimentoCall {
  Future<ApiCallResponse> call({
    int? codAgendamento,
    String? token = 'ce1a4452-8601-44a1-a375-1aa4195f6e5c',
  }) async {
    final baseUrl = DizinvolveAdminApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Put Em Atendimento',
      apiUrl:
          '${baseUrl}/Colaborador/EmAtendimento?CodAgendamento=${codAgendamento}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ObterProntuarioCodUsuarioCall {
  Future<ApiCallResponse> call({
    int? codUsuario,
    String? token = 'ce1a4452-8601-44a1-a375-1aa4195f6e5c',
  }) async {
    final baseUrl = DizinvolveAdminApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Obter Prontuario CodUsuario',
      apiUrl: '${baseUrl}/Colaborador/Prontuario?CodUsuario=${codUsuario}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ObterOsGruposDeExamesCall {
  Future<ApiCallResponse> call({
    String? token = 'ce1a4452-8601-44a1-a375-1aa4195f6e5c',
  }) async {
    final baseUrl = DizinvolveAdminApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Obter os Grupos de Exames',
      apiUrl: '${baseUrl}/Colaborador/GrupoExame',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelarAgendamentoCall {
  Future<ApiCallResponse> call({
    int? codAgendamento,
    String? motivo = '',
    String? token = 'ce1a4452-8601-44a1-a375-1aa4195f6e5c',
  }) async {
    final baseUrl = DizinvolveAdminApiGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "CodAgendamento": "inteiro",
  "motivo": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Cancelar Agendamento',
      apiUrl:
          '${baseUrl}/Agendamento/CancelarAgendamento?codAgendamento=${codAgendamento}&Motivo=${motivo}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConfirmarAgendamentoCall {
  Future<ApiCallResponse> call({
    int? codAgendamento,
    String? token = 'ce1a4452-8601-44a1-a375-1aa4195f6e5c',
  }) async {
    final baseUrl = DizinvolveAdminApiGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "CodAgendamento": "inteiro",
  "motivo": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Confirmar Agendamento',
      apiUrl:
          '${baseUrl}/Agendamento/ConfirmarAgendamento?codAgendamento=${codAgendamento}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ModeloReceituarioExameCall {
  Future<ApiCallResponse> call({
    String? token = 'ce1a4452-8601-44a1-a375-1aa4195f6e5c',
  }) async {
    final baseUrl = DizinvolveAdminApiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Modelo Receituario Exame',
      apiUrl: '${baseUrl}/Colaborador/ModelosReceituarioExame',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GravarProntuarioCall {
  Future<ApiCallResponse> call({
    int? codModelo,
    int? codAgendamento,
    String? html = '',
    String? cid = '',
    String? token = 'ce1a4452-8601-44a1-a375-1aa4195f6e5c',
  }) async {
    final baseUrl = DizinvolveAdminApiGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "CodModeloProntuario": ${codModelo},
  "CodAgendamento": ${codAgendamento},
  "TextoProntuario": "${escapeStringForJson(html)}",
  "CID1": "${escapeStringForJson(cid)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GravarProntuario',
      apiUrl: '${baseUrl}/Colaborador/Prontuario',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SolicitarExameCall {
  Future<ApiCallResponse> call({
    int? codUsuario,
    int? codUnidade,
    int? convenio,
    int? codPlano,
    int? codModelo,
    String? modelo = '',
    int? codProcedimento,
    int? codGrupo,
    String? token = 'ce1a4452-8601-44a1-a375-1aa4195f6e5c',
  }) async {
    final baseUrl = DizinvolveAdminApiGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "CodUsuario": ${codUsuario},
  "CodUnidade": ${codUnidade},
  "CodConvenio": ${convenio},
  "CodPlano": ${codPlano},
  "IndicacaoClinica": "M154",
  "Receituario": {
    "CodModeloReceituario": ${codModelo},
    "TextoReceituario": "${escapeStringForJson(modelo)}"
  },
  "SolicitacaoExameItens": [
    {
      "CodProcedimento": ${codProcedimento},
      "CodGrupoExame": ${codGrupo},
      "QtdSolicitada": 1
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Solicitar Exame',
      apiUrl: '${baseUrl}/Colaborador/SolicitacaoExames',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End DizinvolveAdminApi Group Code

/// Start DizinvolveAuthAndCreate Group Code

class DizinvolveAuthAndCreateGroup {
  static String getBaseUrl({
    String? token =
        'Ug47S78rIfKXg3qyMvs8RtdasrW9mxQBdGrmgtzmVGB_ODP2E_ZajcpDYVyh2um8WD7SGyhx4wZZx1CiJ08Wc08vtJwgYkHI6TAWZxGhDn0lDKtfcUQJ1wWlB1nsauGffgvLrnHG-u6iUHKBpd7IoAp_q48GPRgt5vYvqOI4XCZqxVM8cPLIvMnk3ZNFNIqi0LvMu9NdKSYJSyDRudSSOzgY5KXjw7ErBSucmqH5Ubr_0mER-CDSyrQ8c6ZBRRAQ',
  }) =>
      'https://sistema.versatilis.com.br/Dizevolv/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
    'Content-Type': 'application/json',
  };
  static SolicitarNovaSenhaCall solicitarNovaSenhaCall =
      SolicitarNovaSenhaCall();
  static LinkNovaSenhaCall linkNovaSenhaCall = LinkNovaSenhaCall();
  static LoginMedicoCall loginMedicoCall = LoginMedicoCall();
  static AlertaDoMedicoCall alertaDoMedicoCall = AlertaDoMedicoCall();
  static MedicosPorUnidadeCall medicosPorUnidadeCall = MedicosPorUnidadeCall();
  static AgendaMedicoUnidadeCall agendaMedicoUnidadeCall =
      AgendaMedicoUnidadeCall();
  static ChamarPacienteCall chamarPacienteCall = ChamarPacienteCall();
}

class SolicitarNovaSenhaCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? data = '',
    String? token =
        'Ug47S78rIfKXg3qyMvs8RtdasrW9mxQBdGrmgtzmVGB_ODP2E_ZajcpDYVyh2um8WD7SGyhx4wZZx1CiJ08Wc08vtJwgYkHI6TAWZxGhDn0lDKtfcUQJ1wWlB1nsauGffgvLrnHG-u6iUHKBpd7IoAp_q48GPRgt5vYvqOI4XCZqxVM8cPLIvMnk3ZNFNIqi0LvMu9NdKSYJSyDRudSSOzgY5KXjw7ErBSucmqH5Ubr_0mER-CDSyrQ8c6ZBRRAQ',
  }) async {
    final baseUrl = DizinvolveAuthAndCreateGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Solicitar Nova Senha',
      apiUrl: '${baseUrl}/Login/SolicitarSenha?login=${email}&dtNasc=${data}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LinkNovaSenhaCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? data = '',
    String? cpf = '',
    String? token =
        'Ug47S78rIfKXg3qyMvs8RtdasrW9mxQBdGrmgtzmVGB_ODP2E_ZajcpDYVyh2um8WD7SGyhx4wZZx1CiJ08Wc08vtJwgYkHI6TAWZxGhDn0lDKtfcUQJ1wWlB1nsauGffgvLrnHG-u6iUHKBpd7IoAp_q48GPRgt5vYvqOI4XCZqxVM8cPLIvMnk3ZNFNIqi0LvMu9NdKSYJSyDRudSSOzgY5KXjw7ErBSucmqH5Ubr_0mER-CDSyrQ8c6ZBRRAQ',
  }) async {
    final baseUrl = DizinvolveAuthAndCreateGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'LinkNovaSenha',
      apiUrl:
          '${baseUrl}/Login/RecuperarSenha?email=${email}&dataNascimento=${data}&cpf=${cpf}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? link(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.link''',
      ));
}

class LoginMedicoCall {
  Future<ApiCallResponse> call({
    String? login = '',
    String? senha = '',
    String? token =
        'Ug47S78rIfKXg3qyMvs8RtdasrW9mxQBdGrmgtzmVGB_ODP2E_ZajcpDYVyh2um8WD7SGyhx4wZZx1CiJ08Wc08vtJwgYkHI6TAWZxGhDn0lDKtfcUQJ1wWlB1nsauGffgvLrnHG-u6iUHKBpd7IoAp_q48GPRgt5vYvqOI4XCZqxVM8cPLIvMnk3ZNFNIqi0LvMu9NdKSYJSyDRudSSOzgY5KXjw7ErBSucmqH5Ubr_0mER-CDSyrQ8c6ZBRRAQ',
  }) async {
    final baseUrl = DizinvolveAuthAndCreateGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "Login": "${escapeStringForJson(login)}",
  "Senha": "${escapeStringForJson(senha)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LoginMedico',
      apiUrl: '${baseUrl}/Colaborador/LoginColaborador',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AlertaDoMedicoCall {
  Future<ApiCallResponse> call({
    String? data = '2025-08-06',
    int? codUnidade = 1,
    String? token =
        'Ug47S78rIfKXg3qyMvs8RtdasrW9mxQBdGrmgtzmVGB_ODP2E_ZajcpDYVyh2um8WD7SGyhx4wZZx1CiJ08Wc08vtJwgYkHI6TAWZxGhDn0lDKtfcUQJ1wWlB1nsauGffgvLrnHG-u6iUHKBpd7IoAp_q48GPRgt5vYvqOI4XCZqxVM8cPLIvMnk3ZNFNIqi0LvMu9NdKSYJSyDRudSSOzgY5KXjw7ErBSucmqH5Ubr_0mER-CDSyrQ8c6ZBRRAQ',
  }) async {
    final baseUrl = DizinvolveAuthAndCreateGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Alerta do Medico',
      apiUrl:
          '${baseUrl}/Colaborador/PainelAlerta/Data=${data}&CodUnidade=${codUnidade}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MedicosPorUnidadeCall {
  Future<ApiCallResponse> call({
    int? unidade,
    String? token =
        'Ug47S78rIfKXg3qyMvs8RtdasrW9mxQBdGrmgtzmVGB_ODP2E_ZajcpDYVyh2um8WD7SGyhx4wZZx1CiJ08Wc08vtJwgYkHI6TAWZxGhDn0lDKtfcUQJ1wWlB1nsauGffgvLrnHG-u6iUHKBpd7IoAp_q48GPRgt5vYvqOI4XCZqxVM8cPLIvMnk3ZNFNIqi0LvMu9NdKSYJSyDRudSSOzgY5KXjw7ErBSucmqH5Ubr_0mER-CDSyrQ8c6ZBRRAQ',
  }) async {
    final baseUrl = DizinvolveAuthAndCreateGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Medicos Por Unidade',
      apiUrl: '${baseUrl}/Colaborador/ColaboradorUnidade?CodUnidade=${unidade}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AgendaMedicoUnidadeCall {
  Future<ApiCallResponse> call({
    String? dataSelecionada = '',
    int? codColaborador,
    int? codUnidade,
    String? token =
        'Ug47S78rIfKXg3qyMvs8RtdasrW9mxQBdGrmgtzmVGB_ODP2E_ZajcpDYVyh2um8WD7SGyhx4wZZx1CiJ08Wc08vtJwgYkHI6TAWZxGhDn0lDKtfcUQJ1wWlB1nsauGffgvLrnHG-u6iUHKBpd7IoAp_q48GPRgt5vYvqOI4XCZqxVM8cPLIvMnk3ZNFNIqi0LvMu9NdKSYJSyDRudSSOzgY5KXjw7ErBSucmqH5Ubr_0mER-CDSyrQ8c6ZBRRAQ',
  }) async {
    final baseUrl = DizinvolveAuthAndCreateGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Agenda Medico Unidade',
      apiUrl:
          '${baseUrl}/Colaborador/ConsultarAgendas?CodUnidade=${codUnidade}&CodColaborador=${codColaborador}&DataSelecionada=${dataSelecionada}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChamarPacienteCall {
  Future<ApiCallResponse> call({
    int? codAgendame,
    String? token =
        'Ug47S78rIfKXg3qyMvs8RtdasrW9mxQBdGrmgtzmVGB_ODP2E_ZajcpDYVyh2um8WD7SGyhx4wZZx1CiJ08Wc08vtJwgYkHI6TAWZxGhDn0lDKtfcUQJ1wWlB1nsauGffgvLrnHG-u6iUHKBpd7IoAp_q48GPRgt5vYvqOI4XCZqxVM8cPLIvMnk3ZNFNIqi0LvMu9NdKSYJSyDRudSSOzgY5KXjw7ErBSucmqH5Ubr_0mER-CDSyrQ8c6ZBRRAQ',
  }) async {
    final baseUrl = DizinvolveAuthAndCreateGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Chamar Paciente',
      apiUrl: '${baseUrl}/Colaborador/Chamar?CodAgendamento=${codAgendame}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End DizinvolveAuthAndCreate Group Code

/// Start ClienteApiPagamentos Group Code

class ClienteApiPagamentosGroup {
  static String getBaseUrl({
    String? token =
        'zoqtcW8H3a709K3_iNRwzSwJguktc0fFpfl66rCNiyQPhFFogP8PpcZaFBuaZ49ujJ_E2BEndID6kPeleaTVaK9eNjQ8LnU056pUAkzRamnuTICVQcWO8k6MX_0x7TWWs1u52qgn5W69mpbEYX-yT9HxkyylOgYqpuL106dD4dQqdtaAluczXOoXVcj27Z8bnwnXxgkWXRJDhPs3snyekh9HTvP_8YFxRQBya6LGtdyvF8KwNpdVtBINyMyRs3mW',
  }) =>
      'https://sistema.versatilis.com.br/dizevolv/api';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer [token]',
  };
  static StatusTituloAgendamentoCall statusTituloAgendamentoCall =
      StatusTituloAgendamentoCall();
  static StatusTituloPacoteCall statusTituloPacoteCall =
      StatusTituloPacoteCall();
  static FormasDePagamentoExameCall formasDePagamentoExameCall =
      FormasDePagamentoExameCall();
  static FormasDePagamentoPacoteCall formasDePagamentoPacoteCall =
      FormasDePagamentoPacoteCall();
  static UrlPagamentoCall urlPagamentoCall = UrlPagamentoCall();
  static NotificacaoUsuarioCall notificacaoUsuarioCall =
      NotificacaoUsuarioCall();
}

class StatusTituloAgendamentoCall {
  Future<ApiCallResponse> call({
    int? codAgendamento,
    String? token =
        'zoqtcW8H3a709K3_iNRwzSwJguktc0fFpfl66rCNiyQPhFFogP8PpcZaFBuaZ49ujJ_E2BEndID6kPeleaTVaK9eNjQ8LnU056pUAkzRamnuTICVQcWO8k6MX_0x7TWWs1u52qgn5W69mpbEYX-yT9HxkyylOgYqpuL106dD4dQqdtaAluczXOoXVcj27Z8bnwnXxgkWXRJDhPs3snyekh9HTvP_8YFxRQBya6LGtdyvF8KwNpdVtBINyMyRs3mW',
  }) async {
    final baseUrl = ClienteApiPagamentosGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'StatusTituloAgendamento',
      apiUrl:
          '${baseUrl}/Liquidacao/StatusTituloAgendamento?CodAgendamento=${codAgendamento}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class StatusTituloPacoteCall {
  Future<ApiCallResponse> call({
    int? codigoVenda,
    String? token =
        'zoqtcW8H3a709K3_iNRwzSwJguktc0fFpfl66rCNiyQPhFFogP8PpcZaFBuaZ49ujJ_E2BEndID6kPeleaTVaK9eNjQ8LnU056pUAkzRamnuTICVQcWO8k6MX_0x7TWWs1u52qgn5W69mpbEYX-yT9HxkyylOgYqpuL106dD4dQqdtaAluczXOoXVcj27Z8bnwnXxgkWXRJDhPs3snyekh9HTvP_8YFxRQBya6LGtdyvF8KwNpdVtBINyMyRs3mW',
  }) async {
    final baseUrl = ClienteApiPagamentosGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'StatusTituloPacote',
      apiUrl:
          '${baseUrl}/Liquidacao/StatusTituloPacote?CodigoVenda=${codigoVenda}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FormasDePagamentoExameCall {
  Future<ApiCallResponse> call({
    int? codAgendamento,
    String? token =
        'zoqtcW8H3a709K3_iNRwzSwJguktc0fFpfl66rCNiyQPhFFogP8PpcZaFBuaZ49ujJ_E2BEndID6kPeleaTVaK9eNjQ8LnU056pUAkzRamnuTICVQcWO8k6MX_0x7TWWs1u52qgn5W69mpbEYX-yT9HxkyylOgYqpuL106dD4dQqdtaAluczXOoXVcj27Z8bnwnXxgkWXRJDhPs3snyekh9HTvP_8YFxRQBya6LGtdyvF8KwNpdVtBINyMyRs3mW',
  }) async {
    final baseUrl = ClienteApiPagamentosGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Formas de Pagamento Exame',
      apiUrl:
          '${baseUrl}/Liquidacao/FormasPagamentoAgendamento?CodAgendamento=${codAgendamento}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FormasDePagamentoPacoteCall {
  Future<ApiCallResponse> call({
    int? codigoVenda,
    String? token =
        'zoqtcW8H3a709K3_iNRwzSwJguktc0fFpfl66rCNiyQPhFFogP8PpcZaFBuaZ49ujJ_E2BEndID6kPeleaTVaK9eNjQ8LnU056pUAkzRamnuTICVQcWO8k6MX_0x7TWWs1u52qgn5W69mpbEYX-yT9HxkyylOgYqpuL106dD4dQqdtaAluczXOoXVcj27Z8bnwnXxgkWXRJDhPs3snyekh9HTvP_8YFxRQBya6LGtdyvF8KwNpdVtBINyMyRs3mW',
  }) async {
    final baseUrl = ClienteApiPagamentosGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Formas de Pagamento Pacote',
      apiUrl:
          '${baseUrl}/Liquidacao/FormasPagamentoPacote?CodigoVenda=${codigoVenda}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UrlPagamentoCall {
  Future<ApiCallResponse> call({
    int? codTitulo,
    String? token =
        'zoqtcW8H3a709K3_iNRwzSwJguktc0fFpfl66rCNiyQPhFFogP8PpcZaFBuaZ49ujJ_E2BEndID6kPeleaTVaK9eNjQ8LnU056pUAkzRamnuTICVQcWO8k6MX_0x7TWWs1u52qgn5W69mpbEYX-yT9HxkyylOgYqpuL106dD4dQqdtaAluczXOoXVcj27Z8bnwnXxgkWXRJDhPs3snyekh9HTvP_8YFxRQBya6LGtdyvF8KwNpdVtBINyMyRs3mW',
  }) async {
    final baseUrl = ClienteApiPagamentosGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Url Pagamento',
      apiUrl: '${baseUrl}/Liquidacao/LiquidarAsaas?CodTitulo=${codTitulo}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NotificacaoUsuarioCall {
  Future<ApiCallResponse> call({
    int? codUsuario,
    String? token =
        'zoqtcW8H3a709K3_iNRwzSwJguktc0fFpfl66rCNiyQPhFFogP8PpcZaFBuaZ49ujJ_E2BEndID6kPeleaTVaK9eNjQ8LnU056pUAkzRamnuTICVQcWO8k6MX_0x7TWWs1u52qgn5W69mpbEYX-yT9HxkyylOgYqpuL106dD4dQqdtaAluczXOoXVcj27Z8bnwnXxgkWXRJDhPs3snyekh9HTvP_8YFxRQBya6LGtdyvF8KwNpdVtBINyMyRs3mW',
  }) async {
    final baseUrl = ClienteApiPagamentosGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'NotificacaoUsuario',
      apiUrl: '${baseUrl}/Notificacao/Notificacoes?CodUsuario=${codUsuario}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End ClienteApiPagamentos Group Code

class RefreshTokenCall {
  static Future<ApiCallResponse> call({
    String? username = 'fb8c05b3-bd4b-43db-893e-627a047e4efc',
    String? password = 'api@versatilis',
    String? grantType = 'password',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'RefreshToken',
      apiUrl: 'https://sistema.versatilis.com.br/Dizevolv/token',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'username': username,
        'password': password,
        'grant_type': grantType,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
  static int? expires(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expires_in''',
      ));
}

class CepCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CEP',
      apiUrl: 'https://brasilapi.com.br/api/cep/v2/${cep}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.state''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.city''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.neighborhood''',
      ));
  static String? rua(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.street''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
