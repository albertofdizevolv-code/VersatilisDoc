import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_vizualizar_modelo_exame_widget.dart'
    show ModalVizualizarModeloExameWidget;
import 'package:flutter/material.dart';

class ModalVizualizarModeloExameModel
    extends FlutterFlowModel<ModalVizualizarModeloExameWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
