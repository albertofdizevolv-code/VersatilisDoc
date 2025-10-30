import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/card_exame_detalhe/card_exame_detalhe_widget.dart';
import '/global_components/header/header_widget.dart';
import '/global_components/nav_bar/nav_bar_widget.dart';
import 'meus_exames_widget.dart' show MeusExamesWidget;
import 'package:flutter/material.dart';

class MeusExamesModel extends FlutterFlowModel<MeusExamesWidget> {
  ///  Local state fields for this page.

  List<MeuExameStruct> listaItens = [];
  void addToListaItens(MeuExameStruct item) => listaItens.add(item);
  void removeFromListaItens(MeuExameStruct item) => listaItens.remove(item);
  void removeAtIndexFromListaItens(int index) => listaItens.removeAt(index);
  void insertAtIndexInListaItens(int index, MeuExameStruct item) =>
      listaItens.insert(index, item);
  void updateListaItensAtIndex(int index, Function(MeuExameStruct) updateFn) =>
      listaItens[index] = updateFn(listaItens[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Resultado Exames)] action in MeusExames widget.
  ApiCallResponse? apiResultzwu;
  // Model for Header component.
  late HeaderModel headerModel;
  // Models for cardExameDetalhe dynamic component.
  late FlutterFlowDynamicModels<CardExameDetalheModel> cardExameDetalheModels;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    cardExameDetalheModels =
        FlutterFlowDynamicModels(() => CardExameDetalheModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    cardExameDetalheModels.dispose();
    navBarModel.dispose();
  }
}
