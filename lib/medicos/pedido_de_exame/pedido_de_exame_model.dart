import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/header/header_widget.dart';
import 'pedido_de_exame_widget.dart' show PedidoDeExameWidget;
import 'package:flutter/material.dart';

class PedidoDeExameModel extends FlutterFlowModel<PedidoDeExameWidget> {
  ///  Local state fields for this page.

  DateTime? dataInicial;

  bool salvo = false;

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
