import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/global_components/header/header_widget.dart';
import 'criar_paciente_widget.dart' show CriarPacienteWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CriarPacienteModel extends FlutterFlowModel<CriarPacienteWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Header component.
  late HeaderModel headerModel;
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

  // State field(s) for DropDownSexo widget.
  String? dropDownSexoValue;
  FormFieldController<String>? dropDownSexoValueController;
  // State field(s) for TextFieldCpf widget.
  FocusNode? textFieldCpfFocusNode;
  TextEditingController? textFieldCpfTextController;
  late MaskTextInputFormatter textFieldCpfMask;
  String? Function(BuildContext, String?)? textFieldCpfTextControllerValidator;
  String? _textFieldCpfTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Esse Campo é Obrigatório!';
    }

    return null;
  }

  // State field(s) for TextFieldData widget.
  FocusNode? textFieldDataFocusNode;
  TextEditingController? textFieldDataTextController;
  late MaskTextInputFormatter textFieldDataMask;
  String? Function(BuildContext, String?)? textFieldDataTextControllerValidator;
  String? _textFieldDataTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Esse Campo é Obrigatório!';
    }

    return null;
  }

  // State field(s) for TextFieldTel widget.
  FocusNode? textFieldTelFocusNode;
  TextEditingController? textFieldTelTextController;
  late MaskTextInputFormatter textFieldTelMask;
  String? Function(BuildContext, String?)? textFieldTelTextControllerValidator;
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

  // State field(s) for TextFieldCep widget.
  FocusNode? textFieldCepFocusNode;
  TextEditingController? textFieldCepTextController;
  String? Function(BuildContext, String?)? textFieldCepTextControllerValidator;
  // State field(s) for TextFieldEnde widget.
  FocusNode? textFieldEndeFocusNode;
  TextEditingController? textFieldEndeTextController;
  String? Function(BuildContext, String?)? textFieldEndeTextControllerValidator;
  // State field(s) for TextFieldNumber widget.
  FocusNode? textFieldNumberFocusNode;
  TextEditingController? textFieldNumberTextController;
  String? Function(BuildContext, String?)?
      textFieldNumberTextControllerValidator;
  // State field(s) for TextFieldComple widget.
  FocusNode? textFieldCompleFocusNode;
  TextEditingController? textFieldCompleTextController;
  String? Function(BuildContext, String?)?
      textFieldCompleTextControllerValidator;
  // State field(s) for TextFieldBairro widget.
  FocusNode? textFieldBairroFocusNode;
  TextEditingController? textFieldBairroTextController;
  String? Function(BuildContext, String?)?
      textFieldBairroTextControllerValidator;
  // State field(s) for TextFieldCidade widget.
  FocusNode? textFieldCidadeFocusNode;
  TextEditingController? textFieldCidadeTextController;
  String? Function(BuildContext, String?)?
      textFieldCidadeTextControllerValidator;
  // State field(s) for TextFieldSenha widget.
  FocusNode? textFieldSenhaFocusNode;
  TextEditingController? textFieldSenhaTextController;
  late bool textFieldSenhaVisibility;
  String? Function(BuildContext, String?)?
      textFieldSenhaTextControllerValidator;
  String? _textFieldSenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Esse Campo é Obrigatório!';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Button widget.
  bool? outForm;
  // Stores action output result for [Backend Call - API (CadastrarUsuarioSimples)] action in Button widget.
  ApiCallResponse? cadastroUsuario;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    textFieldNomeTextControllerValidator =
        _textFieldNomeTextControllerValidator;
    textFieldCpfTextControllerValidator = _textFieldCpfTextControllerValidator;
    textFieldDataTextControllerValidator =
        _textFieldDataTextControllerValidator;
    textFieldEmailTextControllerValidator =
        _textFieldEmailTextControllerValidator;
    textFieldSenhaVisibility = false;
    textFieldSenhaTextControllerValidator =
        _textFieldSenhaTextControllerValidator;
  }

  @override
  void dispose() {
    headerModel.dispose();
    textFieldNomeFocusNode?.dispose();
    textFieldNomeTextController?.dispose();

    textFieldCpfFocusNode?.dispose();
    textFieldCpfTextController?.dispose();

    textFieldDataFocusNode?.dispose();
    textFieldDataTextController?.dispose();

    textFieldTelFocusNode?.dispose();
    textFieldTelTextController?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    textFieldCepFocusNode?.dispose();
    textFieldCepTextController?.dispose();

    textFieldEndeFocusNode?.dispose();
    textFieldEndeTextController?.dispose();

    textFieldNumberFocusNode?.dispose();
    textFieldNumberTextController?.dispose();

    textFieldCompleFocusNode?.dispose();
    textFieldCompleTextController?.dispose();

    textFieldBairroFocusNode?.dispose();
    textFieldBairroTextController?.dispose();

    textFieldCidadeFocusNode?.dispose();
    textFieldCidadeTextController?.dispose();

    textFieldSenhaFocusNode?.dispose();
    textFieldSenhaTextController?.dispose();
  }
}
