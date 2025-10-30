import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/header/header_widget.dart';
import '/index.dart';
import 'prontuario_widget.dart' show ProntuarioWidget;
import 'package:flutter/material.dart';

class ProntuarioModel extends FlutterFlowModel<ProntuarioWidget> {
  ///  Local state fields for this page.

  DateTime? dataInicial;

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
