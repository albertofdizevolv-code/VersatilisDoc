import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/global_components/header/header_widget.dart';
import '/index.dart';
import 'agendar_consulta_widget.dart' show AgendarConsultaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AgendarConsultaModel extends FlutterFlowModel<AgendarConsultaWidget> {
  ///  Local state fields for this page.

  List<ProcoColaboradorStruct> procedimento = [];
  void addToProcedimento(ProcoColaboradorStruct item) => procedimento.add(item);
  void removeFromProcedimento(ProcoColaboradorStruct item) =>
      procedimento.remove(item);
  void removeAtIndexFromProcedimento(int index) => procedimento.removeAt(index);
  void insertAtIndexInProcedimento(int index, ProcoColaboradorStruct item) =>
      procedimento.insert(index, item);
  void updateProcedimentoAtIndex(
          int index, Function(ProcoColaboradorStruct) updateFn) =>
      procedimento[index] = updateFn(procedimento[index]);

  List<HorarioColaboradorStruct> horaColaborador = [];
  void addToHoraColaborador(HorarioColaboradorStruct item) =>
      horaColaborador.add(item);
  void removeFromHoraColaborador(HorarioColaboradorStruct item) =>
      horaColaborador.remove(item);
  void removeAtIndexFromHoraColaborador(int index) =>
      horaColaborador.removeAt(index);
  void insertAtIndexInHoraColaborador(
          int index, HorarioColaboradorStruct item) =>
      horaColaborador.insert(index, item);
  void updateHoraColaboradorAtIndex(
          int index, Function(HorarioColaboradorStruct) updateFn) =>
      horaColaborador[index] = updateFn(horaColaborador[index]);

  String? convenio;

  double? valor;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Precos por Colaborador)] action in AgendarConsulta widget.
  ApiCallResponse? apiResult8xp;
  // Stores action output result for [Backend Call - API (Listar Horario do Colaborador)] action in AgendarConsulta widget.
  ApiCallResponse? horarioColaboradorPage;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for TextFieldNome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeTextController;
  String? Function(BuildContext, String?)? textFieldNomeTextControllerValidator;
  String? _textFieldNomeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nome Paciente is required';
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
      return 'E-mail is required';
    }

    return null;
  }

  // State field(s) for TextFieldCep widget.
  FocusNode? textFieldCepFocusNode;
  TextEditingController? textFieldCepTextController;
  late MaskTextInputFormatter textFieldCepMask;
  String? Function(BuildContext, String?)? textFieldCepTextControllerValidator;
  String? _textFieldCepTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '000.000.000-00 is required';
    }

    return null;
  }

  // State field(s) for TextFieldFone widget.
  FocusNode? textFieldFoneFocusNode;
  TextEditingController? textFieldFoneTextController;
  late MaskTextInputFormatter textFieldFoneMask;
  String? Function(BuildContext, String?)? textFieldFoneTextControllerValidator;
  String? _textFieldFoneTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '3199999-9999 is required';
    }

    return null;
  }

  // State field(s) for TextFieldDate widget.
  FocusNode? textFieldDateFocusNode;
  TextEditingController? textFieldDateTextController;
  late MaskTextInputFormatter textFieldDateMask;
  String? Function(BuildContext, String?)? textFieldDateTextControllerValidator;
  // State field(s) for dropDownHorario widget.
  int? dropDownHorarioValue;
  FormFieldController<int>? dropDownHorarioValueController;
  // State field(s) for TextFieldUnidade widget.
  FocusNode? textFieldUnidadeFocusNode;
  TextEditingController? textFieldUnidadeTextController;
  String? Function(BuildContext, String?)?
      textFieldUnidadeTextControllerValidator;
  String? _textFieldUnidadeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Unidade is required';
    }

    return null;
  }

  // State field(s) for DropDownplano widget.
  int? dropDownplanoValue;
  FormFieldController<int>? dropDownplanoValueController;
  // Stores action output result for [Backend Call - API (Preco da Consulta Medico Geral)] action in DropDownplano widget.
  ApiCallResponse? outPlano;
  // State field(s) for TextFieldpreco widget.
  FocusNode? textFieldprecoFocusNode;
  TextEditingController? textFieldprecoTextController;
  late MaskTextInputFormatter textFieldprecoMask;
  String? Function(BuildContext, String?)?
      textFieldprecoTextControllerValidator;
  // State field(s) for DropDownPay widget.
  String? dropDownPayValue;
  FormFieldController<String>? dropDownPayValueController;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? outForm;
  // Stores action output result for [Backend Call - API (Marcar Agendamento)] action in Button widget.
  ApiCallResponse? apiResult45h;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    textFieldNomeTextControllerValidator =
        _textFieldNomeTextControllerValidator;
    textFieldEmailTextControllerValidator =
        _textFieldEmailTextControllerValidator;
    textFieldCepTextControllerValidator = _textFieldCepTextControllerValidator;
    textFieldFoneTextControllerValidator =
        _textFieldFoneTextControllerValidator;
    textFieldUnidadeTextControllerValidator =
        _textFieldUnidadeTextControllerValidator;
  }

  @override
  void dispose() {
    headerModel.dispose();
    textFieldNomeFocusNode?.dispose();
    textFieldNomeTextController?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    textFieldCepFocusNode?.dispose();
    textFieldCepTextController?.dispose();

    textFieldFoneFocusNode?.dispose();
    textFieldFoneTextController?.dispose();

    textFieldDateFocusNode?.dispose();
    textFieldDateTextController?.dispose();

    textFieldUnidadeFocusNode?.dispose();
    textFieldUnidadeTextController?.dispose();

    textFieldprecoFocusNode?.dispose();
    textFieldprecoTextController?.dispose();
  }
}
