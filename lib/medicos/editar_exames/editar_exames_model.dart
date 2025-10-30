import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/global_components/header/header_widget.dart';
import '/index.dart';
import 'editar_exames_widget.dart' show EditarExamesWidget;
import 'package:flutter/material.dart';

class EditarExamesModel extends FlutterFlowModel<EditarExamesWidget> {
  ///  Local state fields for this page.

  DateTime? dataInicial;

  bool salvo = false;

  int? codUnidade;

  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // Stores action output result for [Backend Call - API (Solicitar Exame)] action in Button widget.
  ApiCallResponse? apiResponseExame;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
  }
}
