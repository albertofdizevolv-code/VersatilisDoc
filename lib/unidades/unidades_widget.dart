import '/agendar/modal_selecionar_plano/modal_selecionar_plano_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/card_laboratorio/card_laboratorio_widget.dart';
import '/global_components/nav_bar/nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'unidades_model.dart';
export 'unidades_model.dart';

class UnidadesWidget extends StatefulWidget {
  const UnidadesWidget({
    super.key,
    required this.especialidade,
    required this.nomeEspecialidade,
    required this.tipo,
    required this.data,
    required this.codProcedimento,
  });

  final int? especialidade;
  final String? nomeEspecialidade;
  final String? tipo;
  final String? data;
  final int? codProcedimento;

  static String routeName = 'Unidades';
  static String routePath = '/unidades';

  @override
  State<UnidadesWidget> createState() => _UnidadesWidgetState();
}

class _UnidadesWidgetState extends State<UnidadesWidget> {
  late UnidadesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnidadesModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultzrp = await DizinvolveClientApiGroup
          .listarUnidadesPorEspecialidadeCall
          .call(
        codigo: widget.especialidade,
        token: FFAppState().token,
      );

      if ((_model.apiResultzrp?.succeeded ?? true)) {
        _model.unidadeLista = ((_model.apiResultzrp?.jsonBody ?? '')
                .toList()
                .map<UnidadesCompletaStruct?>(
                    UnidadesCompletaStruct.maybeFromMap)
                .toList() as Iterable<UnidadesCompletaStruct?>)
            .withoutNulls
            .toList()
            .cast<UnidadesCompletaStruct>();
        safeSetState(() {});
      } else {
        return;
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
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 90.0),
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
                          Expanded(
                            child: Text(
                              'Horários Unidade',
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
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nome da Unidade',
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
                      Builder(
                        builder: (context) {
                          final listaUnidade = _model.unidadeLista
                                  .map((e) => e)
                                  .toList()
                                  .firstOrNull
                                  ?.unidades
                                  .toList() ??
                              [];

                          return ListView.separated(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              0,
                              0,
                              12.0,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listaUnidade.length,
                            separatorBuilder: (_, __) => SizedBox(height: 12.0),
                            itemBuilder: (context, listaUnidadeIndex) {
                              final listaUnidadeItem =
                                  listaUnidade[listaUnidadeIndex];
                              return Builder(
                                builder: (context) => InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await showDialog(
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: WebViewAware(
                                            child: GestureDetector(
                                              onTap: () {
                                                FocusScope.of(dialogContext)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child: ModalSelecionarPlanoWidget(
                                                tipo: widget.tipo!,
                                                codEspecialidade:
                                                    widget.especialidade!,
                                                data: widget.data!,
                                                especialidade:
                                                    widget.nomeEspecialidade!,
                                                codProcedimento:
                                                    widget.codProcedimento!,
                                                codUnidade:
                                                    listaUnidadeItem.codUnidade,
                                                nomeUnidade: listaUnidadeItem
                                                    .nomeUnidade,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: wrapWithModel(
                                    model:
                                        _model.cardLaboratorioModels.getModel(
                                      listaUnidadeIndex.toString(),
                                      listaUnidadeIndex,
                                    ),
                                    updateCallback: () => safeSetState(() {}),
                                    child: CardLaboratorioWidget(
                                      key: Key(
                                        'Keyg9k_${listaUnidadeIndex.toString()}',
                                      ),
                                      regiao: listaUnidadeItem.nomeUnidade,
                                      unidade: listaUnidadeItem,
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ].divide(SizedBox(height: 16.0)),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.navBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: NavBarWidget(
                    pageIndex: 0,
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
