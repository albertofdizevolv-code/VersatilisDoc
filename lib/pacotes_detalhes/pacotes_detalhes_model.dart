import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/header/header_widget.dart';
import '/index.dart';
import 'pacotes_detalhes_widget.dart' show PacotesDetalhesWidget;
import 'package:flutter/material.dart';

class PacotesDetalhesModel extends FlutterFlowModel<PacotesDetalhesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Stores action output result for [Backend Call - API (Vender Pacote)] action in Button widget.
  ApiCallResponse? apiResult3iy;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
  }
}
