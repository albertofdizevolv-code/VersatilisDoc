import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldNome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeTextController;
  String? Function(BuildContext, String?)? textFieldNomeTextControllerValidator;
  String? _textFieldNomeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Esse Campo é Obrigatório!';
    }

    return null;
  }

  // State field(s) for TextFieldEmail widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  String? _textFieldEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Esse Campo é Obrigatório!';
    }

    return null;
  }

  // State field(s) for DropDownSexo widget.
  String? dropDownSexoValue;
  FormFieldController<String>? dropDownSexoValueController;
  // State field(s) for TextFieldTele widget.
  FocusNode? textFieldTeleFocusNode;
  TextEditingController? textFieldTeleTextController;
  late MaskTextInputFormatter textFieldTeleMask;
  String? Function(BuildContext, String?)? textFieldTeleTextControllerValidator;
  String? _textFieldTeleTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Esse Campo é Obrigatório!';
    }

    return null;
  }

  // State field(s) for TextFieldcpf widget.
  FocusNode? textFieldcpfFocusNode;
  TextEditingController? textFieldcpfTextController;
  late MaskTextInputFormatter textFieldcpfMask;
  String? Function(BuildContext, String?)? textFieldcpfTextControllerValidator;
  String? _textFieldcpfTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Esse Campo é Obrigatório!';
    }

    return null;
  }

  // State field(s) for TextFieldDataNasc widget.
  FocusNode? textFieldDataNascFocusNode;
  TextEditingController? textFieldDataNascTextController;
  late MaskTextInputFormatter textFieldDataNascMask;
  String? Function(BuildContext, String?)?
      textFieldDataNascTextControllerValidator;
  String? _textFieldDataNascTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Esse Campo é Obrigatório!';
    }

    return null;
  }

  // State field(s) for TextFieldSenha widget.
  FocusNode? textFieldSenhaFocusNode;
  TextEditingController? textFieldSenhaTextController;
  String? Function(BuildContext, String?)?
      textFieldSenhaTextControllerValidator;
  String? _textFieldSenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Esse Campo é Obrigatório!';
    }

    return null;
  }

  // State field(s) for TextFieldConfirm widget.
  FocusNode? textFieldConfirmFocusNode;
  TextEditingController? textFieldConfirmTextController;
  String? Function(BuildContext, String?)?
      textFieldConfirmTextControllerValidator;
  String? _textFieldConfirmTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Esse Campo é Obrigatório!';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Button widget.
  bool? outForm;
  // Stores action output result for [Backend Call - API (RefreshToken)] action in Button widget.
  ApiCallResponse? outAuth;
  // Stores action output result for [Backend Call - API (CadastrarUsuarioSimples)] action in Button widget.
  ApiCallResponse? cadastroUsuarioR;

  @override
  void initState(BuildContext context) {
    textFieldNomeTextControllerValidator =
        _textFieldNomeTextControllerValidator;
    textFieldEmailTextControllerValidator =
        _textFieldEmailTextControllerValidator;
    textFieldTeleTextControllerValidator =
        _textFieldTeleTextControllerValidator;
    textFieldcpfTextControllerValidator = _textFieldcpfTextControllerValidator;
    textFieldDataNascTextControllerValidator =
        _textFieldDataNascTextControllerValidator;
    textFieldSenhaTextControllerValidator =
        _textFieldSenhaTextControllerValidator;
    textFieldConfirmTextControllerValidator =
        _textFieldConfirmTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldNomeFocusNode?.dispose();
    textFieldNomeTextController?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    textFieldTeleFocusNode?.dispose();
    textFieldTeleTextController?.dispose();

    textFieldcpfFocusNode?.dispose();
    textFieldcpfTextController?.dispose();

    textFieldDataNascFocusNode?.dispose();
    textFieldDataNascTextController?.dispose();

    textFieldSenhaFocusNode?.dispose();
    textFieldSenhaTextController?.dispose();

    textFieldConfirmFocusNode?.dispose();
    textFieldConfirmTextController?.dispose();
  }
}
