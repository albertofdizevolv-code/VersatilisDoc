import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/global_components/header/header_widget.dart';
import 'agenda_dados_widget.dart' show AgendaDadosWidget;
import 'package:flutter/material.dart';

class AgendaDadosModel extends FlutterFlowModel<AgendaDadosWidget> {
  ///  Local state fields for this page.

  int? codUnidade;

  bool busca = false;

  DateTime? data;

  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for DropDown widget.
  int? dropDownValue1;
  FormFieldController<int>? dropDownValueController1;
  // State field(s) for DropDown widget.
  int? dropDownValue2;
  FormFieldController<int>? dropDownValueController2;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
  }
}
