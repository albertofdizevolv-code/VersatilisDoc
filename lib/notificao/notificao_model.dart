import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/header/header_widget.dart';
import '/global_components/nav_bar/nav_bar_widget.dart';
import 'notificao_widget.dart' show NotificaoWidget;
import 'package:flutter/material.dart';

class NotificaoModel extends FlutterFlowModel<NotificaoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    navBarModel.dispose();
  }
}
