import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/card_exame_preco/card_exame_preco_widget.dart';
import '/global_components/header/header_widget.dart';
import '/global_components/nav_bar/nav_bar_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'meus_pacotes_model.dart';
export 'meus_pacotes_model.dart';

class MeusPacotesWidget extends StatefulWidget {
  const MeusPacotesWidget({super.key});

  static String routeName = 'MeusPacotes';
  static String routePath = '/meusPacotes';

  @override
  State<MeusPacotesWidget> createState() => _MeusPacotesWidgetState();
}

class _MeusPacotesWidgetState extends State<MeusPacotesWidget> {
  late MeusPacotesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MeusPacotesModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultzwu =
          await DizinvolveClientApiGroup.listarPacotesVendidosCall.call(
        codUsuario: 3011,
        token: FFAppState().token,
      );

      if ((_model.apiResultzwu?.succeeded ?? true)) {
        _model.listaItens = ((_model.apiResultzwu?.jsonBody ?? '')
                .toList()
                .map<PacoteVendidoStruct?>(PacoteVendidoStruct.maybeFromMap)
                .toList() as Iterable<PacoteVendidoStruct?>)
            .withoutNulls
            .toList()
            .cast<PacoteVendidoStruct>();
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
                          title: 'Meus Pacotes',
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
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    AgendarPacotesCompradosWidget.routeName,
                                    queryParameters: {
                                      'pacote': serializeParam(
                                        listItemItem,
                                        ParamType.DataStruct,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.cardExamePrecoModels.getModel(
                                    listItemIndex.toString(),
                                    listItemIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: CardExamePrecoWidget(
                                    key: Key(
                                      'Key8pr_${listItemIndex.toString()}',
                                    ),
                                    item: listItemItem,
                                  ),
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
