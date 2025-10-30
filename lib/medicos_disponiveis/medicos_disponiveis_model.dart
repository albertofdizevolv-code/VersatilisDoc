import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/card_medicos/card_medicos_widget.dart';
import '/global_components/nav_bar/nav_bar_widget.dart';
import '/index.dart';
import 'medicos_disponiveis_widget.dart' show MedicosDisponiveisWidget;
import 'package:flutter/material.dart';

class MedicosDisponiveisModel
    extends FlutterFlowModel<MedicosDisponiveisWidget> {
  ///  Local state fields for this page.

  List<ColaboradorEspecialidadeStruct> medicos = [];
  void addToMedicos(ColaboradorEspecialidadeStruct item) => medicos.add(item);
  void removeFromMedicos(ColaboradorEspecialidadeStruct item) =>
      medicos.remove(item);
  void removeAtIndexFromMedicos(int index) => medicos.removeAt(index);
  void insertAtIndexInMedicos(int index, ColaboradorEspecialidadeStruct item) =>
      medicos.insert(index, item);
  void updateMedicosAtIndex(
          int index, Function(ColaboradorEspecialidadeStruct) updateFn) =>
      medicos[index] = updateFn(medicos[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Listar Profissionais por especialidade)] action in MedicosDisponiveis widget.
  ApiCallResponse? resultadoConsulta;
  // Stores action output result for [Backend Call - API (Listar Profissionais por Procedimento)] action in MedicosDisponiveis widget.
  ApiCallResponse? resultadoProcedimento;
  // Models for CardMedicos dynamic component.
  late FlutterFlowDynamicModels<CardMedicosModel> cardMedicosModels;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    cardMedicosModels = FlutterFlowDynamicModels(() => CardMedicosModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    cardMedicosModels.dispose();
    navBarModel.dispose();
  }
}
