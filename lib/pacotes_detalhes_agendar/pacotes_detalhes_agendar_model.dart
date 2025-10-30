import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/header/header_widget.dart';
import 'pacotes_detalhes_agendar_widget.dart' show PacotesDetalhesAgendarWidget;
import 'package:flutter/material.dart';

class PacotesDetalhesAgendarModel
    extends FlutterFlowModel<PacotesDetalhesAgendarWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
  }
}
