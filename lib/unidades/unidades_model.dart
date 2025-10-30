import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/card_laboratorio/card_laboratorio_widget.dart';
import '/global_components/nav_bar/nav_bar_widget.dart';
import 'unidades_widget.dart' show UnidadesWidget;
import 'package:flutter/material.dart';

class UnidadesModel extends FlutterFlowModel<UnidadesWidget> {
  ///  Local state fields for this page.

  List<UnidadesCompletaStruct> unidadeLista = [];
  void addToUnidadeLista(UnidadesCompletaStruct item) => unidadeLista.add(item);
  void removeFromUnidadeLista(UnidadesCompletaStruct item) =>
      unidadeLista.remove(item);
  void removeAtIndexFromUnidadeLista(int index) => unidadeLista.removeAt(index);
  void insertAtIndexInUnidadeLista(int index, UnidadesCompletaStruct item) =>
      unidadeLista.insert(index, item);
  void updateUnidadeListaAtIndex(
          int index, Function(UnidadesCompletaStruct) updateFn) =>
      unidadeLista[index] = updateFn(unidadeLista[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Listar Unidades por Especialidade)] action in Unidades widget.
  ApiCallResponse? apiResultzrp;
  // Models for cardLaboratorio dynamic component.
  late FlutterFlowDynamicModels<CardLaboratorioModel> cardLaboratorioModels;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    cardLaboratorioModels =
        FlutterFlowDynamicModels(() => CardLaboratorioModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    cardLaboratorioModels.dispose();
    navBarModel.dispose();
  }
}
