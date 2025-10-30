import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/card_exame_preco/card_exame_preco_widget.dart';
import '/global_components/header/header_widget.dart';
import '/global_components/nav_bar/nav_bar_widget.dart';
import '/index.dart';
import 'meus_pacotes_widget.dart' show MeusPacotesWidget;
import 'package:flutter/material.dart';

class MeusPacotesModel extends FlutterFlowModel<MeusPacotesWidget> {
  ///  Local state fields for this page.

  List<PacoteVendidoStruct> listaItens = [];
  void addToListaItens(PacoteVendidoStruct item) => listaItens.add(item);
  void removeFromListaItens(PacoteVendidoStruct item) =>
      listaItens.remove(item);
  void removeAtIndexFromListaItens(int index) => listaItens.removeAt(index);
  void insertAtIndexInListaItens(int index, PacoteVendidoStruct item) =>
      listaItens.insert(index, item);
  void updateListaItensAtIndex(
          int index, Function(PacoteVendidoStruct) updateFn) =>
      listaItens[index] = updateFn(listaItens[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Listar Pacotes Vendidos)] action in MeusPacotes widget.
  ApiCallResponse? apiResultzwu;
  // Model for Header component.
  late HeaderModel headerModel;
  // Models for cardExamePreco dynamic component.
  late FlutterFlowDynamicModels<CardExamePrecoModel> cardExamePrecoModels;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    cardExamePrecoModels =
        FlutterFlowDynamicModels(() => CardExamePrecoModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    cardExamePrecoModels.dispose();
    navBarModel.dispose();
  }
}
