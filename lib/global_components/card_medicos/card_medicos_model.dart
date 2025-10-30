import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'card_medicos_widget.dart' show CardMedicosWidget;
import 'package:flutter/material.dart';

class CardMedicosModel extends FlutterFlowModel<CardMedicosWidget> {
  ///  Local state fields for this component.

  List<HorarioColaboradorStruct> horario = [];
  void addToHorario(HorarioColaboradorStruct item) => horario.add(item);
  void removeFromHorario(HorarioColaboradorStruct item) => horario.remove(item);
  void removeAtIndexFromHorario(int index) => horario.removeAt(index);
  void insertAtIndexInHorario(int index, HorarioColaboradorStruct item) =>
      horario.insert(index, item);
  void updateHorarioAtIndex(
          int index, Function(HorarioColaboradorStruct) updateFn) =>
      horario[index] = updateFn(horario[index]);

  String? hora;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Listar Horario do Colaborador)] action in CardMedicos widget.
  ApiCallResponse? horarioColaborador;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
