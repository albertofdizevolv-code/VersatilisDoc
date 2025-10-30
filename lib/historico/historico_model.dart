import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/card_exame_historico/card_exame_historico_widget.dart';
import '/global_components/header/header_widget.dart';
import '/global_components/nav_bar/nav_bar_widget.dart';
import 'historico_widget.dart' show HistoricoWidget;
import 'package:flutter/material.dart';

class HistoricoModel extends FlutterFlowModel<HistoricoWidget> {
  ///  Local state fields for this page.

  List<HistoricoAgendamentoStruct> historico = [];
  void addToHistorico(HistoricoAgendamentoStruct item) => historico.add(item);
  void removeFromHistorico(HistoricoAgendamentoStruct item) =>
      historico.remove(item);
  void removeAtIndexFromHistorico(int index) => historico.removeAt(index);
  void insertAtIndexInHistorico(int index, HistoricoAgendamentoStruct item) =>
      historico.insert(index, item);
  void updateHistoricoAtIndex(
          int index, Function(HistoricoAgendamentoStruct) updateFn) =>
      historico[index] = updateFn(historico[index]);

  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Models for cardExameHistorico dynamic component.
  late FlutterFlowDynamicModels<CardExameHistoricoModel>
      cardExameHistoricoModels;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    cardExameHistoricoModels =
        FlutterFlowDynamicModels(() => CardExameHistoricoModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    cardExameHistoricoModels.dispose();
    navBarModel.dispose();
  }
}
