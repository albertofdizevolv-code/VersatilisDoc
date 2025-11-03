import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'buscar_paciente_widget.dart' show BuscarPacienteWidget;
import 'package:flutter/material.dart';

class BuscarPacienteModel extends FlutterFlowModel<BuscarPacienteWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for Cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // Stores action output result for [Backend Call - API (Buscar Usuario CPF)] action in Button widget.
  ApiCallResponse? apiResultm2h;
  // Stores action output result for [Backend Call - API (Buscar Usuario Nome)] action in Button widget.
  ApiCallResponse? apiNome;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    cpfFocusNode?.dispose();
    cpfTextController?.dispose();
  }
}
