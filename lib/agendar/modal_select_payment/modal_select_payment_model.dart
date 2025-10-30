import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_select_payment_widget.dart' show ModalSelectPaymentWidget;
import 'package:flutter/material.dart';

class ModalSelectPaymentModel
    extends FlutterFlowModel<ModalSelectPaymentWidget> {
  ///  Local state fields for this component.

  PagamentosStruct? item;
  void updateItemStruct(Function(PagamentosStruct) updateFn) {
    updateFn(item ??= PagamentosStruct());
  }

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Formas de Pagamento Exame)] action in modalSelectPayment widget.
  ApiCallResponse? outExame;
  // Stores action output result for [Backend Call - API (Formas de Pagamento Pacote)] action in modalSelectPayment widget.
  ApiCallResponse? outPacote;
  // Stores action output result for [Backend Call - API (Url Pagamento)] action in Button widget.
  ApiCallResponse? apiResult0l6;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
