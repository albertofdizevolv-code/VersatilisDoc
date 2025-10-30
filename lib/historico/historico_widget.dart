import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/card_exame_historico/card_exame_historico_widget.dart';
import '/global_components/header/header_widget.dart';
import '/global_components/lista_vazia/lista_vazia_widget.dart';
import '/global_components/nav_bar/nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'historico_model.dart';
export 'historico_model.dart';

class HistoricoWidget extends StatefulWidget {
  const HistoricoWidget({super.key});

  static String routeName = 'Historico';
  static String routePath = '/historico';

  @override
  State<HistoricoWidget> createState() => _HistoricoWidgetState();
}

class _HistoricoWidgetState extends State<HistoricoWidget> {
  late HistoricoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HistoricoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.headerModel,
                      updateCallback: () => safeSetState(() {}),
                      child: HeaderWidget(
                        title: 'Histórico',
                      ),
                    ),
                    Expanded(
                      child: Builder(
                        builder: (context) {
                          final listHistorico =
                              _model.historico.map((e) => e).toList();
                          if (listHistorico.isEmpty) {
                            return Center(
                              child: ListaVaziaWidget(
                                title: 'Nenhum agendamento encontrado',
                                subMs: true,
                              ),
                            );
                          }

                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            itemCount: listHistorico.length,
                            separatorBuilder: (_, __) => SizedBox(height: 12.0),
                            itemBuilder: (context, listHistoricoIndex) {
                              final listHistoricoItem =
                                  listHistorico[listHistoricoIndex];
                              return wrapWithModel(
                                model: _model.cardExameHistoricoModels.getModel(
                                  listHistoricoIndex.toString(),
                                  listHistoricoIndex,
                                ),
                                updateCallback: () => safeSetState(() {}),
                                child: CardExameHistoricoWidget(
                                  key: Key(
                                    'Keyq58_${listHistoricoIndex.toString()}',
                                  ),
                                  cardDetalhes: listHistoricoItem,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ].divide(SizedBox(height: 12.0)),
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
