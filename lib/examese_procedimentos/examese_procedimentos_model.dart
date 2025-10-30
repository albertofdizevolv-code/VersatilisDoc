import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/card_exames_status/card_exames_status_widget.dart';
import '/global_components/header/header_widget.dart';
import '/global_components/nav_bar/nav_bar_widget.dart';
import '/index.dart';
import 'examese_procedimentos_widget.dart' show ExameseProcedimentosWidget;
import 'package:flutter/material.dart';

class ExameseProcedimentosModel
    extends FlutterFlowModel<ExameseProcedimentosWidget> {
  ///  Local state fields for this page.

  List<ConsultasAgendadasStruct> listaItens = [];
  void addToListaItens(ConsultasAgendadasStruct item) => listaItens.add(item);
  void removeFromListaItens(ConsultasAgendadasStruct item) =>
      listaItens.remove(item);
  void removeAtIndexFromListaItens(int index) => listaItens.removeAt(index);
  void insertAtIndexInListaItens(int index, ConsultasAgendadasStruct item) =>
      listaItens.insert(index, item);
  void updateListaItensAtIndex(
          int index, Function(ConsultasAgendadasStruct) updateFn) =>
      listaItens[index] = updateFn(listaItens[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Listar Consultas Agendadas)] action in ExameseProcedimentos widget.
  ApiCallResponse? apiResultzwu;
  // Model for Header component.
  late HeaderModel headerModel;
  // Models for CardExamesStatus dynamic component.
  late FlutterFlowDynamicModels<CardExamesStatusModel> cardExamesStatusModels;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    cardExamesStatusModels =
        FlutterFlowDynamicModels(() => CardExamesStatusModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    cardExamesStatusModels.dispose();
    navBarModel.dispose();
  }
}
