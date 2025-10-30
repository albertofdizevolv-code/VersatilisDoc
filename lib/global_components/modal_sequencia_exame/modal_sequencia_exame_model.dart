import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_sequencia_exame_widget.dart' show ModalSequenciaExameWidget;
import 'package:flutter/material.dart';

class ModalSequenciaExameModel
    extends FlutterFlowModel<ModalSequenciaExameWidget> {
  ///  Local state fields for this component.

  int? codigo;

  String? especialidade;

  ListaProcedimentosStruct? itemSelecionado;
  void updateItemSelecionadoStruct(
      Function(ListaProcedimentosStruct) updateFn) {
    updateFn(itemSelecionado ??= ListaProcedimentosStruct());
  }

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
