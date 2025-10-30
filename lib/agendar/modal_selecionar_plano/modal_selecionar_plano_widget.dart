import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/backend/schema/structs/index.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'modal_selecionar_plano_model.dart';
export 'modal_selecionar_plano_model.dart';

class ModalSelecionarPlanoWidget extends StatefulWidget {
  const ModalSelecionarPlanoWidget({
    super.key,
    required this.tipo,
    required this.codEspecialidade,
    required this.data,
    required this.especialidade,
    required this.codProcedimento,
    required this.codUnidade,
    required this.nomeUnidade,
  });

  final String? tipo;
  final int? codEspecialidade;
  final String? data;
  final String? especialidade;
  final int? codProcedimento;
  final int? codUnidade;
  final String? nomeUnidade;

  @override
  State<ModalSelecionarPlanoWidget> createState() =>
      _ModalSelecionarPlanoWidgetState();
}

class _ModalSelecionarPlanoWidgetState extends State<ModalSelecionarPlanoWidget>
    with TickerProviderStateMixin {
  late ModalSelecionarPlanoModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalSelecionarPlanoModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 250.ms),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 250.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 70.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 5.0,
        sigmaY: 4.0,
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).accent4,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(12.0),
              child: FutureBuilder<ApiCallResponse>(
                future: DizinvolveClientApiGroup.convenioUsuarioAtivoCall.call(
                  codUnidade: widget.codUnidade,
                  codEspecialidade: widget.codEspecialidade,
                  codUsuario: FFAppState().User.codUsuario,
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
                  final containerConvenioUsuarioAtivoResponse = snapshot.data!;

                  return Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxWidth: 670.0,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            1.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.0,
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Form(
                            key: _model.formKey,
                            autovalidateMode: AutovalidateMode.always,
                            child: Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 4.0),
                                                child: Text(
                                                  'Selecionar Convênio',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 40.0,
                                          icon: Icon(
                                            Icons.close_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: FlutterFlowDropDown<int>(
                                          controller:
                                              _model.dropDownValueController ??=
                                                  FormFieldController<int>(
                                            _model.dropDownValue ??= 0,
                                          ),
                                          options: List<int>.from(
                                              (containerConvenioUsuarioAtivoResponse
                                                          .jsonBody
                                                          .toList()
                                                          .map<ListaConvenioStruct?>(
                                                              ListaConvenioStruct
                                                                  .maybeFromMap)
                                                          .toList()
                                                      as Iterable<
                                                          ListaConvenioStruct?>)
                                                  .withoutNulls
                                                  .map((e) => e.codPlano)
                                                  .toList()),
                                          optionLabels:
                                              (containerConvenioUsuarioAtivoResponse
                                                          .jsonBody
                                                          .toList()
                                                          .map<ListaConvenioStruct?>(
                                                              ListaConvenioStruct
                                                                  .maybeFromMap)
                                                          .toList()
                                                      as Iterable<
                                                          ListaConvenioStruct?>)
                                                  .withoutNulls
                                                  .map((e) => e.nomeConvenio)
                                                  .toList(),
                                          onChanged: (val) async {
                                            safeSetState(() =>
                                                _model.dropDownValue = val);
                                            _model.nomePlano =
                                                (containerConvenioUsuarioAtivoResponse
                                                            .jsonBody
                                                            .toList()
                                                            .map<ListaConvenioStruct?>(
                                                                ListaConvenioStruct
                                                                    .maybeFromMap)
                                                            .toList()
                                                        as Iterable<
                                                            ListaConvenioStruct?>)
                                                    .withoutNulls
                                                    .where((e) =>
                                                        e.codPlano ==
                                                        _model.dropDownValue)
                                                    .toList()
                                                    .firstOrNull
                                                    ?.nomeConvenio;
                                            safeSetState(() {});
                                          },
                                          width: 200.0,
                                          height: 40.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
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
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                          hintText: 'Selecionar Modelo',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .blackVersatilis,
                                          borderWidth: 1.0,
                                          borderRadius: 8.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 4.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              if (_model.dropDownValue !=
                                                  null) {
                                                context.pushNamed(
                                                  AgendarExameWidget.routeName,
                                                  queryParameters: {
                                                    'especialidade':
                                                        serializeParam(
                                                      widget.especialidade,
                                                      ParamType.String,
                                                    ),
                                                    'data': serializeParam(
                                                      widget.data,
                                                      ParamType.String,
                                                    ),
                                                    'codUnidade':
                                                        serializeParam(
                                                      widget.codUnidade,
                                                      ParamType.int,
                                                    ),
                                                    'codEspecialidade':
                                                        serializeParam(
                                                      widget.codEspecialidade,
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
                                                    'codPlano': serializeParam(
                                                      _model.dropDownValue,
                                                      ParamType.int,
                                                    ),
                                                    'nomePlano': serializeParam(
                                                      _model.nomePlano,
                                                      ParamType.String,
                                                    ),
                                                    'nomeUnidade':
                                                        serializeParam(
                                                      widget.nomeUnidade,
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              } else {
                                                return;
                                              }
                                            },
                                            text: 'Criar',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      32.0, 0.0, 32.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                              elevation: 2.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation2']!);
                },
              ),
            ),
          ],
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!),
    );
  }
}
