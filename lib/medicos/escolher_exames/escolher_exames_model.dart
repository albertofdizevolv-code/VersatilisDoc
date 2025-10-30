import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/header/header_widget.dart';
import '/global_components/lista_vazia/lista_vazia_widget.dart';
import '/index.dart';
import 'escolher_exames_widget.dart' show EscolherExamesWidget;
import 'package:flutter/material.dart';

class EscolherExamesModel extends FlutterFlowModel<EscolherExamesWidget> {
  ///  Local state fields for this page.

  DateTime? dataInicial;

  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for ListaVazia component.
  late ListaVaziaModel listaVaziaModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    listaVaziaModel = createModel(context, () => ListaVaziaModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    listaVaziaModel.dispose();
  }
}
