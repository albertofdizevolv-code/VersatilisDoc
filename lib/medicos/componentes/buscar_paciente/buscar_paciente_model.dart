import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'buscar_paciente_widget.dart' show BuscarPacienteWidget;
import 'package:flutter/material.dart';

class BuscarPacienteModel extends FlutterFlowModel<BuscarPacienteWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // Stores action output result for [Backend Call - API (Buscar Usuario CPF)] action in Button widget.
  ApiCallResponse? apiResultm2h;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
