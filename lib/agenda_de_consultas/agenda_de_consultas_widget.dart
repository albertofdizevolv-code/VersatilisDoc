import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/card_agenda_consultas/card_agenda_consultas_widget.dart';
import '/global_components/lista_vazia/lista_vazia_widget.dart';
import '/global_components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'agenda_de_consultas_model.dart';
export 'agenda_de_consultas_model.dart';

class AgendaDeConsultasWidget extends StatefulWidget {
  const AgendaDeConsultasWidget({super.key});

  static String routeName = 'AgendaDeConsultas';
  static String routePath = '/agendaDeConsultas';

  @override
  State<AgendaDeConsultasWidget> createState() =>
      _AgendaDeConsultasWidgetState();
}

class _AgendaDeConsultasWidgetState extends State<AgendaDeConsultasWidget> {
  late AgendaDeConsultasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgendaDeConsultasModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().User.nome == '') {
        context.pushNamed(CentralInfoWidget.routeName);
      } else {
        _model.apiResultzwu =
            await DizinvolveClientApiGroup.listarConsultasAgendadasCall.call(
          userId: FFAppState().User.codUsuario,
          token: FFAppState().token,
        );

        if ((_model.apiResultzwu?.succeeded ?? true)) {
          _model.consultas = ((_model.apiResultzwu?.jsonBody ?? '')
                  .toList()
                  .map<ConsultasAgendadasStruct?>(
                      ConsultasAgendadasStruct.maybeFromMap)
                  .toList() as Iterable<ConsultasAgendadasStruct?>)
              .withoutNulls
              .toList()
              .cast<ConsultasAgendadasStruct>();
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
                padding:
                    EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 100.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowCalendar(
                        color: FlutterFlowTheme.of(context).primary,
                        iconColor: FlutterFlowTheme.of(context).secondaryText,
                        weekFormat: false,
                        weekStartsMonday: false,
                        initialDate: getCurrentTimestamp,
                        rowHeight: 48.0,
                        onChange: (DateTimeRange? newSelectedDate) {
                          safeSetState(() =>
                              _model.calendarSelectedDay = newSelectedDate);
                        },
                        titleStyle:
                            FlutterFlowTheme.of(context).titleLarge.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                ),
                        dayOfWeekStyle:
                            FlutterFlowTheme.of(context).bodyLarge.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontStyle,
                                ),
                        dateStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                        selectedDateStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).textWhite,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                        inactiveDateStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                        locale: FFLocalizations.of(context).languageCode,
                      ),
                      Container(
                        width: 30.0,
                        height: 8.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFCED3DE),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            dateTimeFormat(
                              "MMMMEEEEd",
                              _model.calendarSelectedDay!.start,
                              locale: FFLocalizations.of(context).languageCode,
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
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Builder(
                                builder: (context) {
                                  final listaConsultas = _model.consultas
                                      .where((e) =>
                                          functions.stringToDateTime(e.data) ==
                                          _model.calendarSelectedDay?.start)
                                      .toList();
                                  if (listaConsultas.isEmpty) {
                                    return ListaVaziaWidget(
                                      title: 'Nenhum agendamento encontrado',
                                      subMs: true,
                                    );
                                  }

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: listaConsultas.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 12.0),
                                    itemBuilder:
                                        (context, listaConsultasIndex) {
                                      final listaConsultasItem =
                                          listaConsultas[listaConsultasIndex];
                                      return wrapWithModel(
                                        model: _model.cardAgendaConsultasModels
                                            .getModel(
                                          listaConsultasIndex.toString(),
                                          listaConsultasIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CardAgendaConsultasWidget(
                                          key: Key(
                                            'Keyfzl_${listaConsultasIndex.toString()}',
                                          ),
                                          consulta: listaConsultasItem,
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ].divide(SizedBox(height: 12.0)),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.navBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: NavBarWidget(
                    pageIndex: 1,
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
