import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/global_components/header/header_widget.dart';
import '/global_components/lista_vazia/lista_vazia_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'escolher_exames_model.dart';
export 'escolher_exames_model.dart';

class EscolherExamesWidget extends StatefulWidget {
  const EscolherExamesWidget({
    super.key,
    required this.paciente,
    required this.exame,
  });

  final ProntuarioAtendimentoStruct? paciente;
  final SolicitacaoExameItensStruct? exame;

  static String routeName = 'EscolherExames';
  static String routePath = '/escolherExames';

  @override
  State<EscolherExamesWidget> createState() => _EscolherExamesWidgetState();
}

class _EscolherExamesWidgetState extends State<EscolherExamesWidget> {
  late EscolherExamesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EscolherExamesModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.headerModel,
                    updateCallback: () => safeSetState(() {}),
                    child: HeaderWidget(
                      title: 'Exames',
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FutureBuilder<ApiCallResponse>(
                          future: DizinvolveAdminApiGroup
                              .modeloReceituarioExameCall
                              .call(
                            token: FFAppState().TokenMedico,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            final containerModeloReceituarioExameResponse =
                                snapshot.data!;

                            return Container(
                              decoration: BoxDecoration(),
                              child: Builder(
                                builder: (context) {
                                  if (containerModeloReceituarioExameResponse
                                      .succeeded) {
                                    return Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(),
                                      child: Builder(
                                        builder: (context) {
                                          final itens = (containerModeloReceituarioExameResponse
                                                          .jsonBody
                                                          .toList()
                                                          .map<ModeloExameStruct?>(
                                                              ModeloExameStruct
                                                                  .maybeFromMap)
                                                          .toList()
                                                      as Iterable<
                                                          ModeloExameStruct?>)
                                                  .withoutNulls
                                                  .map((e) => e)
                                                  .toList()
                                                  .toList() ??
                                              [];

                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: List.generate(
                                                itens.length, (itensIndex) {
                                              final itensItem =
                                                  itens[itensIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 1.0, 0.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(10.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            itensItem.nome,
                                                            'N/A',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        FlutterFlowWebView(
                                                          content: itensItem
                                                              .template,
                                                          height: 250.0,
                                                          verticalScroll: false,
                                                          horizontalScroll:
                                                              false,
                                                          html: true,
                                                        ),
                                                        FFButtonWidget(
                                                          onPressed: () async {
                                                            context.pushNamed(
                                                              EditarExamesWidget
                                                                  .routeName,
                                                              queryParameters: {
                                                                'paciente':
                                                                    serializeParam(
                                                                  widget
                                                                      .paciente,
                                                                  ParamType
                                                                      .DataStruct,
                                                                ),
                                                                'modelo':
                                                                    serializeParam(
                                                                  itensItem
                                                                      .template,
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'codModelo':
                                                                    serializeParam(
                                                                  itensItem
                                                                      .codModeloReceituario,
                                                                  ParamType.int,
                                                                ),
                                                                'procedimento':
                                                                    serializeParam(
                                                                  widget.exame,
                                                                  ParamType
                                                                      .DataStruct,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          text: 'Selecionar',
                                                          options:
                                                              FFButtonOptions(
                                                            height: 40.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontStyle,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 8.0)),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }).divide(SizedBox(height: 12.0)),
                                          );
                                        },
                                      ),
                                    );
                                  } else {
                                    return wrapWithModel(
                                      model: _model.listaVaziaModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ListaVaziaWidget(
                                        title: 'Nenhum Item Encontrado',
                                        subMs: false,
                                      ),
                                    );
                                  }
                                },
                              ),
                            );
                          },
                        ),
                      ]
                          .divide(SizedBox(height: 16.0))
                          .addToStart(SizedBox(height: 12.0))
                          .addToEnd(SizedBox(height: 12.0)),
                    ),
                  ),
                ].divide(SizedBox(height: 12.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
