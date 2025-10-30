import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/header/header_widget.dart';
import '/global_components/nav_bar/nav_bar_widget.dart';
import '/index.dart';
import 'agendar_pacotes_comprados_widget.dart'
    show AgendarPacotesCompradosWidget;
import 'package:flutter/material.dart';

class AgendarPacotesCompradosModel
    extends FlutterFlowModel<AgendarPacotesCompradosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - API (Vender Pacote)] action in Button widget.
  ApiCallResponse? apiResult3iy;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    navBarModel.dispose();
  }
}
