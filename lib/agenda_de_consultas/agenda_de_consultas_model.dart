import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/card_agenda_consultas/card_agenda_consultas_widget.dart';
import '/global_components/nav_bar/nav_bar_widget.dart';
import '/index.dart';
import 'agenda_de_consultas_widget.dart' show AgendaDeConsultasWidget;
import 'package:flutter/material.dart';

class AgendaDeConsultasModel extends FlutterFlowModel<AgendaDeConsultasWidget> {
  ///  Local state fields for this page.

  List<ConsultasAgendadasStruct> consultas = [];
  void addToConsultas(ConsultasAgendadasStruct item) => consultas.add(item);
  void removeFromConsultas(ConsultasAgendadasStruct item) =>
      consultas.remove(item);
  void removeAtIndexFromConsultas(int index) => consultas.removeAt(index);
  void insertAtIndexInConsultas(int index, ConsultasAgendadasStruct item) =>
      consultas.insert(index, item);
  void updateConsultasAtIndex(
          int index, Function(ConsultasAgendadasStruct) updateFn) =>
      consultas[index] = updateFn(consultas[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Listar Consultas Agendadas)] action in AgendaDeConsultas widget.
  ApiCallResponse? apiResultzwu;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Models for CardAgendaConsultas dynamic component.
  late FlutterFlowDynamicModels<CardAgendaConsultasModel>
      cardAgendaConsultasModels;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    cardAgendaConsultasModels =
        FlutterFlowDynamicModels(() => CardAgendaConsultasModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    cardAgendaConsultasModels.dispose();
    navBarModel.dispose();
  }
}
