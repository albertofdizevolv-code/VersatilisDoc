import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/card_exames_status/card_exames_status_widget.dart';
import '/global_components/header/header_widget.dart';
import '/global_components/nav_bar/nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'examese_procedimentos_model.dart';
export 'examese_procedimentos_model.dart';

class ExameseProcedimentosWidget extends StatefulWidget {
  const ExameseProcedimentosWidget({super.key});

  static String routeName = 'ExameseProcedimentos';
  static String routePath = '/exameseProcedimentos';

  @override
  State<ExameseProcedimentosWidget> createState() =>
      _ExameseProcedimentosWidgetState();
}

class _ExameseProcedimentosWidgetState
    extends State<ExameseProcedimentosWidget> {
  late ExameseProcedimentosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExameseProcedimentosModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultzwu =
          await DizinvolveClientApiGroup.listarConsultasAgendadasCall.call(
        userId: FFAppState().User.codUsuario,
        token: FFAppState().token,
      );

      if ((_model.apiResultzwu?.succeeded ?? true)) {
        _model.listaItens = ((_model.apiResultzwu?.jsonBody ?? '')
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
        backgroundColor: Color(0xFFF9F9F9),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      wrapWithModel(
                        model: _model.headerModel,
                        updateCallback: () => safeSetState(() {}),
                        child: HeaderWidget(
                          title: 'Exames e \nprocedimentos',
                        ),
                      ),
                      Builder(
                        builder: (context) {
                          final listItem =
                              _model.listaItens.map((e) => e).toList();

                          return ListView.separated(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              0,
                              0,
                              10.0,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listItem.length,
                            separatorBuilder: (_, __) => SizedBox(height: 12.0),
                            itemBuilder: (context, listItemIndex) {
                              final listItemItem = listItem[listItemIndex];
                              return wrapWithModel(
                                model: _model.cardExamesStatusModels.getModel(
                                  listItemIndex.toString(),
                                  listItemIndex,
                                ),
                                updateCallback: () => safeSetState(() {}),
                                child: CardExamesStatusWidget(
                                  key: Key(
                                    'Keymoq_${listItemIndex.toString()}',
                                  ),
                                  item: listItemItem,
                                  action: () async {
                                    context.pushNamed(
                                      ExameseProcedimentosWidget.routeName,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ]
                        .divide(SizedBox(height: 16.0))
                        .addToStart(SizedBox(height: 16.0))
                        .addToEnd(SizedBox(height: 80.0)),
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
