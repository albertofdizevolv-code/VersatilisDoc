import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/header/header_widget.dart';
import '/index.dart';
import 'ficha_do_paciente_widget.dart' show FichaDoPacienteWidget;
import 'package:flutter/material.dart';

class FichaDoPacienteModel extends FlutterFlowModel<FichaDoPacienteWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Stores action output result for [Backend Call - API (Obter Prontuario CodUsuario)] action in Button widget.
  ApiCallResponse? outProintuario;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
  }
}
