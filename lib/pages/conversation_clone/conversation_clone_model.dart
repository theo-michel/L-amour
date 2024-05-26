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

  // dynamic chatHistory;
  // var chatHistory = [{"role":"user","content":"Hi how are you today ?"},{"role":"user1","content":"I am good I just finished a math problem"},{"role":"user","content":"Oh nice I study physics as well !"}];
  var chatHistory = [{'role': 'user', 'content': '"Vibin with you, darling!"'}, {'role': 'assistant', 'content': "You're a sweetheart!"}, {'role': 'user', 'content': "Thanks, you're too kind!"}, {'role': 'assistant', 'content': "Aw, shucks, thanks for bein' so sweet!"}, {'role': 'user', 'content': "You're makin' me blush!"}, {'role': 'assistant', 'content': "You're makin' me smile!"}, {'role': 'user', 'content': "That's the best I've solved all day!"}, {'role': 'assistant', 'content': "You're a charmer, ain't ya?"}, {'role': 'user', 'content': "Guess you could say I've got your number!"}, {'role': 'assistant', 'content': "You're cookin' up some sweet talk!"}, {'role': 'user', 'content': 'Just serving up some byte-sized flattery!'}];

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
