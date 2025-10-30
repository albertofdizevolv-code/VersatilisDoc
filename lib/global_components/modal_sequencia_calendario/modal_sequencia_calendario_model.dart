import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_sequencia_calendario_widget.dart'
    show ModalSequenciaCalendarioWidget;
import 'package:flutter/material.dart';

class ModalSequenciaCalendarioModel
    extends FlutterFlowModel<ModalSequenciaCalendarioWidget> {
  ///  Local state fields for this component.

  String tipos = 'tipo';

  ///  State fields for stateful widgets in this component.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {}
}
