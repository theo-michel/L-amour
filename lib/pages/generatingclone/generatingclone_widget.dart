import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'generatingclone_model.dart';
export 'generatingclone_model.dart';

class GeneratingcloneWidget extends StatefulWidget {
  const GeneratingcloneWidget({super.key});

  @override
  State<GeneratingcloneWidget> createState() => _GeneratingcloneWidgetState();
}

class _GeneratingcloneWidgetState extends State<GeneratingcloneWidget> {
  late GeneratingcloneModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GeneratingcloneModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.instantTimer = InstantTimer.periodic(
        duration: Duration(milliseconds: 5000),
        callback: (timer) async {
          context.pushNamed('WeFoundSomeMatches');

          _model.instantTimer?.cancel();
        },
        startImmediately: false,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://i.gifer.com/H8An.gif',
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Text(
                  'Generating the clone...',
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Lato',
                        color: Color(0xFF606A85),
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ].addToEnd(SizedBox(height: 44.0)),
          ),
        ),
      ),
    );
  }
}
