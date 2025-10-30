import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_lista_exames_widget.dart' show ModalListaExamesWidget;
import 'package:flutter/material.dart';

class ModalListaExamesModel extends FlutterFlowModel<ModalListaExamesWidget> {
  ///  Local state fields for this component.

  SolicitacaoExameItensStruct? selecionados;
  void updateSelecionadosStruct(
      Function(SolicitacaoExameItensStruct) updateFn) {
    updateFn(selecionados ??= SolicitacaoExameItensStruct());
  }

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
