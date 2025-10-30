import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/global_components/header/header_widget.dart';
import 'prontuario_inicio_widget.dart' show ProntuarioInicioWidget;
import 'package:flutter/material.dart';

class ProntuarioInicioModel extends FlutterFlowModel<ProntuarioInicioWidget> {
  ///  Local state fields for this page.

  DateTime? dataInicial;

  bool salvo = false;

  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (GravarProntuario)] action in Button widget.
  ApiCallResponse? apiResult5xt;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
  }
}
