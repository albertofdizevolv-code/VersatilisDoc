import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  late MaskTextInputFormatter cpfMask;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // State field(s) for Pass widget.
  FocusNode? passFocusNode;
  TextEditingController? passTextController;
  late bool passVisibility;
  String? Function(BuildContext, String?)? passTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // Stores action output result for [Backend Call - API (RefreshToken)] action in Button widget.
  ApiCallResponse? outAuth;
  // Stores action output result for [Backend Call - API (LoginUser)] action in Button widget.
  ApiCallResponse? userLogin;
  // State field(s) for EmailLogin widget.
  FocusNode? emailLoginFocusNode;
  TextEditingController? emailLoginTextController;
  String? Function(BuildContext, String?)? emailLoginTextControllerValidator;
  // State field(s) for PassMedico widget.
  FocusNode? passMedicoFocusNode;
  TextEditingController? passMedicoTextController;
  late bool passMedicoVisibility;
  String? Function(BuildContext, String?)? passMedicoTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // Stores action output result for [Backend Call - API (RefreshToken)] action in Button widget.
  ApiCallResponse? outAuthMedico;
  // Stores action output result for [Backend Call - API (LoginMedico)] action in Button widget.
  ApiCallResponse? outMedico;

  @override
  void initState(BuildContext context) {
    passVisibility = false;
    passMedicoVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    passFocusNode?.dispose();
    passTextController?.dispose();

    emailLoginFocusNode?.dispose();
    emailLoginTextController?.dispose();

    passMedicoFocusNode?.dispose();
    passMedicoTextController?.dispose();
  }
}
