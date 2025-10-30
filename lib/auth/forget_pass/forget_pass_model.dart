import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'forget_pass_widget.dart' show ForgetPassWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ForgetPassModel extends FlutterFlowModel<ForgetPassWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldemail widget.
  FocusNode? textFieldemailFocusNode;
  TextEditingController? textFieldemailTextController;
  String? Function(BuildContext, String?)?
      textFieldemailTextControllerValidator;
  // State field(s) for TextFieldcpf widget.
  FocusNode? textFieldcpfFocusNode;
  TextEditingController? textFieldcpfTextController;
  String? Function(BuildContext, String?)? textFieldcpfTextControllerValidator;
  // State field(s) for TextFielddata widget.
  FocusNode? textFielddataFocusNode;
  TextEditingController? textFielddataTextController;
  late MaskTextInputFormatter textFielddataMask;
  String? Function(BuildContext, String?)? textFielddataTextControllerValidator;
  // Stores action output result for [Backend Call - API (LinkNovaSenha)] action in Button widget.
  ApiCallResponse? apiResultkym;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldemailFocusNode?.dispose();
    textFieldemailTextController?.dispose();

    textFieldcpfFocusNode?.dispose();
    textFieldcpfTextController?.dispose();

    textFielddataFocusNode?.dispose();
    textFielddataTextController?.dispose();
  }
}
