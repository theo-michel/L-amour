import '/components/blank_list_component_widget.dart';
import '/components/button_copy_copy_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'conversation_clone_widget.dart' show ConversationCloneWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConversationCloneModel extends FlutterFlowModel<ConversationCloneWidget> {
  ///  Local state fields for this page.

  String? inputContent = '';

  dynamic chatHistory;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ButtonCopyCopy component.
  late ButtonCopyCopyModel buttonCopyCopyModel;

  @override
  void initState(BuildContext context) {
    buttonCopyCopyModel = createModel(context, () => ButtonCopyCopyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    buttonCopyCopyModel.dispose();
  }
}
