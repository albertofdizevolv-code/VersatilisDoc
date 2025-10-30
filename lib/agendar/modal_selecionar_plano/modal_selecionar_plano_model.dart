import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_selecionar_plano_widget.dart' show ModalSelecionarPlanoWidget;
import 'package:flutter/material.dart';

class ModalSelecionarPlanoModel
    extends FlutterFlowModel<ModalSelecionarPlanoWidget> {
  ///  Local state fields for this component.

  String? nomePlano;

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
