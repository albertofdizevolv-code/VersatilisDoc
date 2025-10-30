import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'header_model.dart';
export 'header_model.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  late HeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FlutterFlowIconButton(
          borderColor: Color(0xFFCED3DE),
          borderRadius: 8.0,
          buttonSize: 40.0,
          fillColor: FlutterFlowTheme.of(context).primaryBackground,
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: FlutterFlowTheme.of(context).blackVersatilis,
            size: 24.0,
          ),
          onPressed: () async {
            context.safePop();
          },
        ),
        Expanded(
          child: AutoSizeText(
            valueOrDefault<String>(
              widget.title,
              'titulo',
            ),
            textAlign: TextAlign.center,
            minFontSize: 14.0,
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                  ),
                  fontSize: 20.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                ),
          ),
        ),
        Container(
          width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
        ),
      ],
    );
  }
}
