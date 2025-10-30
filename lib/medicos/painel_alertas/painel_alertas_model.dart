import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/global_components/header/header_widget.dart';
import '/global_components/lista_vazia/lista_vazia_widget.dart';
import '/medicos/componentes/card_person_alert/card_person_alert_widget.dart';
import 'dart:async';
import 'painel_alertas_widget.dart' show PainelAlertasWidget;
import 'package:flutter/material.dart';

class PainelAlertasModel extends FlutterFlowModel<PainelAlertasWidget> {
  ///  Local state fields for this page.

  DateTime? dataInicial;

  List<AlertaPainelStruct> alertas = [];
  void addToAlertas(AlertaPainelStruct item) => alertas.add(item);
  void removeFromAlertas(AlertaPainelStruct item) => alertas.remove(item);
  void removeAtIndexFromAlertas(int index) => alertas.removeAt(index);
  void insertAtIndexInAlertas(int index, AlertaPainelStruct item) =>
      alertas.insert(index, item);
  void updateAlertasAtIndex(int index, Function(AlertaPainelStruct) updateFn) =>
      alertas[index] = updateFn(alertas[index]);

  UnidadeCompletaEnderecoStruct? unidade;
  void updateUnidadeStruct(Function(UnidadeCompletaEnderecoStruct) updateFn) {
    updateFn(unidade ??= UnidadeCompletaEnderecoStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  DateTime? datePicked;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // Models for cardPersonAlert dynamic component.
  late FlutterFlowDynamicModels<CardPersonAlertModel> cardPersonAlertModels;
  // Model for ListaVazia component.
  late ListaVaziaModel listaVaziaModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    cardPersonAlertModels =
        FlutterFlowDynamicModels(() => CardPersonAlertModel());
    listaVaziaModel = createModel(context, () => ListaVaziaModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    cardPersonAlertModels.dispose();
    listaVaziaModel.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
