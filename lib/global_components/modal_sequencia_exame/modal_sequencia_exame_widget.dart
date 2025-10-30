import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/global_components/modal_sequencia_tipo/modal_sequencia_tipo_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'modal_sequencia_exame_model.dart';
export 'modal_sequencia_exame_model.dart';

class ModalSequenciaExameWidget extends StatefulWidget {
  const ModalSequenciaExameWidget({
    super.key,
    required this.tipo,
    required this.data,
  });

  final String? tipo;
  final String? data;

  @override
  State<ModalSequenciaExameWidget> createState() =>
      _ModalSequenciaExameWidgetState();
}

class _ModalSequenciaExameWidgetState extends State<ModalSequenciaExameWidget> {
  late ModalSequenciaExameModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalSequenciaExameModel());
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
                                  child: ModalSequenciaTipoWidget(),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Selecione o Exame',
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
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                    ),
                  ].divide(SizedBox(width: 12.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
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
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ],
                        ),
                        FutureBuilder<ApiCallResponse>(
                          future: DizinvolveClientApiGroup
                              .listarProcedimentosCall
                              .call(
                            token: FFAppState().token,
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
                            final containerListarProcedimentosResponse =
                                snapshot.data!;

                            return Container(
                              height: 300.0,
                              decoration: BoxDecoration(),
                              child: Builder(
                                builder: (context) {
                                  final listarItens =
                                      (containerListarProcedimentosResponse
                                                      .jsonBody
                                                      .toList()
                                                      .map<ListaProcedimentosStruct?>(
                                                          ListaProcedimentosStruct
                                                              .maybeFromMap)
                                                      .toList()
                                                  as Iterable<
                                                      ListaProcedimentosStruct?>)
                                              .withoutNulls
                                              .map((e) => e)
                                              .toList()
                                              .where((e) => e.bitExame == true)
                                              .toList()
                                              .toList() ??
                                          [];

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    itemCount: listarItens.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 12.0),
                                    itemBuilder: (context, listarItensIndex) {
                                      final listarItensItem =
                                          listarItens[listarItensIndex];
                                      return InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.codigo =
                                              listarItensItem.codProcedimento;
                                          _model.especialidade =
                                              listarItensItem.nomeProcedimento;
                                          _model.itemSelecionado =
                                              ListaProcedimentosStruct
                                                  .maybeFromMap(
                                                      listarItensItem.toMap());
                                          safeSetState(() {});
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color: listarItensItem
                                                          .codProcedimento ==
                                                      _model.codigo
                                                  ? FlutterFlowTheme.of(context)
                                                      .blackVersatilis
                                                  : Color(0x00000000),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 4.0, 8.0, 4.0),
                                                  child: Text(
                                                    listarItensItem
                                                        .nomeProcedimento,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
                FFButtonWidget(
                  onPressed: (_model.codigo == null)
                      ? null
                      : () async {
                          Navigator.pop(context);

                          context.pushNamed(
                            UnidadesWidget.routeName,
                            queryParameters: {
                              'especialidade': serializeParam(
                                _model.itemSelecionado?.codEspecialidade,
                                ParamType.int,
                              ),
                              'nomeEspecialidade': serializeParam(
                                _model.itemSelecionado?.nomeEspecialidade,
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
                              'codProcedimento': serializeParam(
                                _model.itemSelecionado?.codProcedimento,
                                ParamType.int,
                              ),
                            }.withoutNulls,
                          );
                        },
                  text: 'Continuar',
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
