import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/card_medicos/card_medicos_widget.dart';
import '/global_components/confirm_botton_sheet/confirm_botton_sheet_widget.dart';
import '/global_components/lista_vazia_medicos/lista_vazia_medicos_widget.dart';
import '/global_components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'medicos_disponiveis_model.dart';
export 'medicos_disponiveis_model.dart';

class MedicosDisponiveisWidget extends StatefulWidget {
  const MedicosDisponiveisWidget({
    super.key,
    required this.codEspecialidade,
    required this.especialidade,
    required this.unidade,
    required this.tipo,
    required this.data,
    required this.codUnidade,
    required this.codProcedimento,
  });

  final int? codEspecialidade;
  final String? especialidade;
  final String? unidade;
  final String? tipo;
  final String? data;
  final int? codUnidade;
  final int? codProcedimento;

  static String routeName = 'MedicosDisponiveis';
  static String routePath = '/medicosDisponiveis';

  @override
  State<MedicosDisponiveisWidget> createState() =>
      _MedicosDisponiveisWidgetState();
}

class _MedicosDisponiveisWidgetState extends State<MedicosDisponiveisWidget> {
  late MedicosDisponiveisModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MedicosDisponiveisModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.tipo == 'Consulta') {
        _model.resultadoConsulta = await DizinvolveClientApiGroup
            .listarProfissionaisPorEspecialidadeCall
            .call(
          codEspecialidade: widget.codEspecialidade,
          token: FFAppState().token,
        );

        if ((_model.resultadoConsulta?.succeeded ?? true)) {
          _model.medicos = ((_model.resultadoConsulta?.jsonBody ?? '')
                  .toList()
                  .map<ColaboradorEspecialidadeStruct?>(
                      ColaboradorEspecialidadeStruct.maybeFromMap)
                  .toList() as Iterable<ColaboradorEspecialidadeStruct?>)
              .withoutNulls
              .toList()
              .cast<ColaboradorEspecialidadeStruct>();
          safeSetState(() {});
        } else {
          return;
        }
      } else {
        _model.resultadoProcedimento = await DizinvolveClientApiGroup
            .listarProfissionaisPorProcedimentoCall
            .call(
          codProcedimento: widget.codProcedimento,
          token: FFAppState().token,
        );

        if ((_model.resultadoProcedimento?.succeeded ?? true)) {
          _model.medicos = ((_model.resultadoProcedimento?.jsonBody ?? '')
                  .toList()
                  .map<ColaboradorEspecialidadeStruct?>(
                      ColaboradorEspecialidadeStruct.maybeFromMap)
                  .toList() as Iterable<ColaboradorEspecialidadeStruct?>)
              .withoutNulls
              .toList()
              .cast<ColaboradorEspecialidadeStruct>();
          safeSetState(() {});
        } else {
          return;
        }
      }
    });
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
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Color(0xFFCED3DE),
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            icon: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color:
                                  FlutterFlowTheme.of(context).blackVersatilis,
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          Text(
                            'Médicos Disponíveis',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  fontSize: 20.0,
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
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                dateTimeFormat(
                                  "MMMMEEEEd",
                                  functions.stringToDateTime(widget.data!),
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 70.0),
                        child: Builder(
                          builder: (context) {
                            final listaMedicos =
                                _model.medicos.map((e) => e).toList();
                            if (listaMedicos.isEmpty) {
                              return Center(
                                child: ListaVaziaMedicosWidget(),
                              );
                            }

                            return ListView.separated(
                              padding: EdgeInsets.symmetric(vertical: 12.0),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listaMedicos.length,
                              separatorBuilder: (_, __) =>
                                  SizedBox(height: 12.0),
                              itemBuilder: (context, listaMedicosIndex) {
                                final listaMedicosItem =
                                    listaMedicos[listaMedicosIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return WebViewAware(
                                          child: GestureDetector(
                                            onTap: () {
                                              FocusScope.of(context).unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: ConfirmBottonSheetWidget(
                                                callback: () async {
                                                  context.pushNamed(
                                                    AgendarConsultaWidget
                                                        .routeName,
                                                    queryParameters: {
                                                      'nomeMedico':
                                                          serializeParam(
                                                        listaMedicosItem.nome,
                                                        ParamType.String,
                                                      ),
                                                      'especialidade':
                                                          serializeParam(
                                                        widget.especialidade,
                                                        ParamType.String,
                                                      ),
                                                      'unidadde':
                                                          serializeParam(
                                                        widget.unidade,
                                                        ParamType.String,
                                                      ),
                                                      'codColaborador':
                                                          serializeParam(
                                                        listaMedicosItem
                                                            .codColaborador,
                                                        ParamType.int,
                                                      ),
                                                      'data': serializeParam(
                                                        widget.data,
                                                        ParamType.String,
                                                      ),
                                                      'codUnidade':
                                                          serializeParam(
                                                        1,
                                                        ParamType.int,
                                                      ),
                                                      'codEspecialidade':
                                                          serializeParam(
                                                        widget
                                                            .codEspecialidade,
                                                        ParamType.int,
                                                      ),
                                                      'tipo': serializeParam(
                                                        widget.tipo,
                                                        ParamType.String,
                                                      ),
                                                      'codProcedimento':
                                                          serializeParam(
                                                        widget.codProcedimento,
                                                        ParamType.int,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                  child: wrapWithModel(
                                    model: _model.cardMedicosModels.getModel(
                                      listaMedicosIndex.toString(),
                                      listaMedicosIndex,
                                    ),
                                    updateCallback: () => safeSetState(() {}),
                                    child: CardMedicosWidget(
                                      key: Key(
                                        'Keysmj_${listaMedicosIndex.toString()}',
                                      ),
                                      especialidade: widget.especialidade!,
                                      unidade: widget.unidade!,
                                      nomeMedico: listaMedicosItem.nome,
                                      codColaborador:
                                          listaMedicosItem.codColaborador,
                                      data: widget.data!,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.navBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: NavBarWidget(
                    pageIndex: 2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
