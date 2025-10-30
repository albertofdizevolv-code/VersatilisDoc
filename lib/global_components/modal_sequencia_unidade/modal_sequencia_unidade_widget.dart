import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/global_components/modal_sequencia_especialidade/modal_sequencia_especialidade_widget.dart';
import '/global_components/modal_sequencia_exame/modal_sequencia_exame_widget.dart';
import '/global_components/modal_sequencia_procedimento/modal_sequencia_procedimento_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'modal_sequencia_unidade_model.dart';
export 'modal_sequencia_unidade_model.dart';

class ModalSequenciaUnidadeWidget extends StatefulWidget {
  const ModalSequenciaUnidadeWidget({
    super.key,
    required this.codEspecialidade,
    required this.especialidade,
    required this.tipo,
    required this.data,
    required this.codProcedimento,
  });

  final int? codEspecialidade;
  final String? especialidade;
  final String? tipo;
  final String? data;
  final int? codProcedimento;

  @override
  State<ModalSequenciaUnidadeWidget> createState() =>
      _ModalSequenciaUnidadeWidgetState();
}

class _ModalSequenciaUnidadeWidgetState
    extends State<ModalSequenciaUnidadeWidget> {
  late ModalSequenciaUnidadeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalSequenciaUnidadeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 12.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  4.0,
                ),
                spreadRadius: 0.0,
              )
            ],
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Builder(
                      builder: (context) => FlutterFlowIconButton(
                        borderColor: Color(0xFFCED3DE),
                        borderRadius: 8.0,
                        buttonSize: 40.0,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        icon: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: FlutterFlowTheme.of(context).blackVersatilis,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          Navigator.pop(context);
                          if (widget.tipo == 'Consulta') {
                            await showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: WebViewAware(
                                    child: ModalSequenciaEspecialidadeWidget(
                                      tipo: '',
                                      data: widget.data!,
                                    ),
                                  ),
                                );
                              },
                            );
                          } else if (widget.tipo == 'Exame') {
                            await showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: WebViewAware(
                                    child: ModalSequenciaExameWidget(
                                      tipo: widget.tipo!,
                                      data: widget.data!,
                                    ),
                                  ),
                                );
                              },
                            );
                          } else {
                            await showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: WebViewAware(
                                    child: ModalSequenciaProcedimentoWidget(
                                      tipo: widget.tipo!,
                                      data: widget.data!,
                                    ),
                                  ),
                                );
                              },
                            );
                          }
                        },
                      ),
                    ),
                    Text(
                      'Informe a Unidade de \nAtendimento',
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontStyle,
                              ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'Qual unidade clínica você quer acessar hoje?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).greyButton,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'A-Z',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ],
                        ),
                        Container(
                          height: 300.0,
                          decoration: BoxDecoration(),
                          child: FutureBuilder<ApiCallResponse>(
                            future: DizinvolveClientApiGroup
                                .listarUnidadesPorEspecialidadeCall
                                .call(
                              token: FFAppState().token,
                              codigo: widget.codEspecialidade,
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
                              final listViewListarUnidadesPorEspecialidadeResponse =
                                  snapshot.data!;

                              return Builder(
                                builder: (context) {
                                  final listaUnidades =
                                      (listViewListarUnidadesPorEspecialidadeResponse
                                                      .jsonBody
                                                      .toList()
                                                      .map<UnidadesCompletaStruct?>(
                                                          UnidadesCompletaStruct
                                                              .maybeFromMap)
                                                      .toList()
                                                  as Iterable<
                                                      UnidadesCompletaStruct?>)
                                              .withoutNulls
                                              .map((e) => e)
                                              .toList()
                                              .toList() ??
                                          [];

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    itemCount: listaUnidades.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 16.0),
                                    itemBuilder: (context, listaUnidadesIndex) {
                                      final listaUnidadesItem =
                                          listaUnidades[listaUnidadesIndex];
                                      return InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.unidade = listaUnidadesItem
                                              .unidades
                                              .elementAtOrNull(
                                                  listaUnidadesIndex)
                                              ?.codUnidade;
                                          _model.nomeUnidade = listaUnidadesItem
                                              .unidades
                                              .elementAtOrNull(
                                                  listaUnidadesIndex)
                                              ?.nomeUnidade;
                                          safeSetState(() {});
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color: _model.unidade ==
                                                      listaUnidadesItem.unidades
                                                          .elementAtOrNull(
                                                              listaUnidadesIndex)
                                                          ?.codUnidade
                                                  ? FlutterFlowTheme.of(context)
                                                      .blackVersatilis
                                                  : Color(0x00000000),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        listaUnidadesItem
                                                            .nomeRegiao,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .inter(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                      Builder(
                                                        builder: (context) {
                                                          final listaUnidade =
                                                              listaUnidadesItem
                                                                  .unidades
                                                                  .map((e) => e)
                                                                  .toList();

                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: List.generate(
                                                                listaUnidade
                                                                    .length,
                                                                (listaUnidadeIndex) {
                                                              final listaUnidadeItem =
                                                                  listaUnidade[
                                                                      listaUnidadeIndex];
                                                              return Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  listaUnidadeItem
                                                                      .nomeUnidade,
                                                                  'NomeUnidade',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .greyButton,
                                                                      fontSize:
                                                                          12.0,
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
                                                              );
                                                            }),
                                                          );
                                                        },
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 4.0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
                FFButtonWidget(
                  onPressed: (_model.unidade == null)
                      ? null
                      : () async {
                          context.pushNamed(
                            MedicosDisponiveisWidget.routeName,
                            queryParameters: {
                              'codEspecialidade': serializeParam(
                                widget.codEspecialidade,
                                ParamType.int,
                              ),
                              'especialidade': serializeParam(
                                widget.especialidade,
                                ParamType.String,
                              ),
                              'unidade': serializeParam(
                                _model.nomeUnidade,
                                ParamType.String,
                              ),
                              'tipo': serializeParam(
                                widget.tipo,
                                ParamType.String,
                              ),
                              'data': serializeParam(
                                widget.data,
                                ParamType.String,
                              ),
                              'codUnidade': serializeParam(
                                _model.unidade,
                                ParamType.int,
                              ),
                              'codProcedimento': serializeParam(
                                widget.codProcedimento,
                                ParamType.int,
                              ),
                            }.withoutNulls,
                          );
                        },
                  text: 'Confirmar',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 45.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).blackVersatilis,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(8.0),
                    disabledColor: FlutterFlowTheme.of(context).greyButton,
                    disabledTextColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
              ].divide(SizedBox(height: 16.0)),
            ),
          ),
        ),
      ),
    );
  }
}
