import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
// import 'package:record/record.dart';
// import 'pyschological_evaluation_model.dart';
// export 'pyschological_evaluation_model.dart';
// import 'package:vapi/vapi.dart';
//
//
// var vapi = Vapi('08b1f71f-06dc-41b5-9f21-a226b1a1f9de');
//
//
//
// class PyschologicalEvaluationWidget extends StatefulWidget {
//   const PyschologicalEvaluationWidget({super.key});
//
//   @override
//   State<PyschologicalEvaluationWidget> createState() =>
//       _PyschologicalEvaluationWidgetState();
// }
//
// class _PyschologicalEvaluationWidgetState
//     extends State<PyschologicalEvaluationWidget> with TickerProviderStateMixin {
//   late PyschologicalEvaluationModel _model;
//   bool is_recording = false;
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   final animationsMap = <String, AnimationInfo>{};
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => PyschologicalEvaluationModel());
//
//     animationsMap.addAll({
//       'containerOnPageLoadAnimation': AnimationInfo(
//         trigger: AnimationTrigger.onPageLoad,
//         effectsBuilder: () => [
//           VisibilityEffect(duration: 300.ms),
//           FadeEffect(
//             curve: Curves.easeInOut,
//             delay: 300.0.ms,
//             duration: 300.0.ms,
//             begin: 0.0,
//             end: 1.0,
//           ),
//           ScaleEffect(
//             curve: Curves.bounceOut,
//             delay: 300.0.ms,
//             duration: 300.0.ms,
//             begin: Offset(0.6, 0.6),
//             end: Offset(1.0, 1.0),
//           ),
//         ],
//       ),
//     });
//
//     WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
//   }
//
//   @override
//   void dispose() {
//     _model.dispose();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => _model.unfocusNode.canRequestFocus
//           ? FocusScope.of(context).requestFocus(_model.unfocusNode)
//           : FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: Colors.white,
//         body: Column(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               width: 100.0,
//               height: 100.0,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//               ),
//             ),
//             Column(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 InkWell(
//                   splashColor: Colors.transparent,
//                   focusColor: Colors.transparent,
//                   hoverColor: Colors.transparent,
//                   highlightColor: Colors.transparent,
//                   onTap: () async {
//                     if (!is_recording){
//                       print("Recording !");
//                     await vapi.start(assistant: {
//                       "model": {
//                         "provider": "openai",
//                         "model": "gpt-3.5-turbo",
//                         "systemPrompt": "You're an assistant..."
//                       },
//                       "voice": {
//                         "provider": "11labs",
//                         "voiceId": "burt",
//                       },
//                     });
//                     is_recording = true;}else{
//                       await vapi.stop();
//                     }
//
//
//
//                   },
//                   child: Container(
//                     width: 120.0,
//                     height: 120.0,
//                     decoration: BoxDecoration(
//                       color: Colors.black,
//                       shape: BoxShape.circle,
//                     ),
//                   ),
//                 ).animateOnPageLoad(
//                     animationsMap['containerOnPageLoadAnimation']!),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
//                   child: Text(
//                     'Let\'s talk! ',
//                     style: FlutterFlowTheme.of(context).displaySmall.override(
//                           fontFamily: 'Lato',
//                           fontSize: 28.0,
//                           letterSpacing: 0.0,
//                           fontWeight: FontWeight.w600,
//                         ),
//                   ),
//                 ),
//                 Container(
//                   width: 100.0,
//                   height: 100.0,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 60.0, 0.0),
//               child: FFButtonWidget(
//                 onPressed: () async {
//                   context.pushNamed('Generatingclone');
//                 },
//                 text: 'Stop the conversation',
//                 options: FFButtonOptions(
//                   width: 270.0,
//                   height: 50.0,
//                   padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
//                   iconPadding:
//                       EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
//                   color: Colors.black,
//                   textStyle: FlutterFlowTheme.of(context).titleSmall.override(
//                         fontFamily: 'Lato',
//                         color: Colors.white,
//                         fontSize: 20.0,
//                         letterSpacing: 0.0,
//                         fontWeight: FontWeight.w600,
//                       ),
//                   elevation: 2.0,
//                   borderSide: BorderSide(
//                     width: 1.0,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:vapi/Vapi.dart';
import 'package:http/http.dart' as http;


const VAPI_PUBLIC_KEY = '08b1f71f-06dc-41b5-9f21-a226b1a1f9de';
const VAPI_ASSISTANT_ID = '579d97af-f1bd-460f-8f8d-0fb41059e0e2';


class PyschologicalEvaluationWidget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// def
// Future<http.Response> sendConversation() {
//   return http.post(Uri.parse('http://0.0.0.0:8000/sendConvo/'));
// }

Future<http.Response> sendConversation(List conversation) {
  return http.post(
    Uri.parse('https://3a37-195-154-25-99.ngrok-free.app/send_convo/'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'conversation': conversation.toString(),
    }),
  );
}


class _MyAppState extends State<PyschologicalEvaluationWidget> {
  String buttonText = 'Start Call';
  bool isLoading = false;
  bool isCallStarted = false;
  Vapi vapi = Vapi(VAPI_PUBLIC_KEY);
  var conversation = [];
  _MyAppState() {
    vapi.onEvent.listen((event) {
      if (event.label == "call-start") {
        setState(() {
          buttonText = 'End Call';
          isLoading = false;
          isCallStarted = true;
        });

        print('call started');
      }
      if (event.label == "call-end") {
        setState(() {
          buttonText = 'Start Call';
          isLoading = false;
          isCallStarted = false;
        });
        print('call ended');
        sendConversation(conversation);//Fire and forget


      }
      if (event.label == "message") {
        print(event.value.runtimeType);
        Map valueMap = json.decode(event.value);
        // print(valueMap);
        // print((valueMap["type"]).runtimeType);
        if (valueMap["type"] == "conversation-update"){
          conversation = valueMap["conversation"];
          // print("Here we have the conversation !");
          // print(valueMap["conversation"]);
        }
        // print(event.value);// Here are the messages
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test App'),
        ),
        body: Center(
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [ElevatedButton(
              onPressed: isLoading
                  ? null
                  : () async {
                setState(() {
                  buttonText = 'Loading...';
                  isLoading = true;
                });

                if (!isCallStarted) {
                  await vapi.start(assistant: {
                    "firstMessage": "Hello, I am your Social Assistant. What kind of relationship are you looking for ?",
                    "model": {
                      "provider": "openai",
                      "model": "gpt-3.5-turbo",
                      "messages": [
                        {
                          "role": "system",
                          "content":"You are a really lovely and happy person that loves to know more about the people's lives. Your task is to learn the most information with just a few questions. You can get inspired by the ones provided below. YOU ARE CHATTING WITH LITTLE SMS.You are a really lovely and happy person that loves to know more about the people's lives. Your task is to learn the most information with just a few questions YOU ARE CHATTING WITH LITTLE SMS Here are examples of questions you can ask the user What's your favorite way to spend a weekend?\nWhat kind of music do you enjoy the most, and why?\nDo you prefer staying in or going out on a typical night?\nWhat's the best vacation you've ever been on?\nWhat are your top three favorite movies?\nDo you enjoy cooking, and if so, what's your signature dish?\nWhat are some of your hobbies or interests outside of work?\nAre you more of an introvert or an extrovert?\nWhat's one book that has significantly influenced your life?\nDo you have any pets? If so, tell me about them.\nWhat is your dream job or career goal?\nHow do you usually handle stress or difficult situations?\nWhat's your family like? Are you close to them?\nWhat qualities do you value most in a friend or partner?\nWhat's your favorite childhood memory?\nHow do you like to celebrate your birthday?\nDo you enjoy any sports or physical activities?\nWhat are some things on your bucket list?\nHow do you define success and what does it look like for you?\nWhat's the most spontaneous thing you've ever done?",
                          // "content": "You are a charming, witty, and funny, psychologist you are talking to the user in order to know more about the interest of the person and his personalityHere are examples of questions you can ask the user :What\'s your favorite way to spend a weekend?\nWhat kind of music do you enjoy the most, and why?\nDo you prefer staying in or going out on a typical night?\nWhat\'s the best vacation you\'ve ever been on?\nWhat are your top three favorite movies?\nDo you enjoy cooking, and if so, what\'s your signature dish?\nWhat are some of your hobbies or interests outside of work?\nAre you more of an introvert or an extrovert?\nWhat\'s one book that has significantly influenced your life?\nDo you have any pets? If so, tell me about them.\nWhat is your dream job or career goal?\nHow do you usually handle stress or difficult situations?\nWhat\'s your family like? Are you close to them?\nWhat qualities do you value most in a friend or partner?\nWhat\'s your favorite childhood memory?\nHow do you like to celebrate your birthday?\nDo you enjoy any sports or physical activities?\nWhat are some things on your bucket list?\nHow do you define success and what does it look like for you?\nWhat\'s the most spontaneous thing you\'ve ever done?"
                        }
                      ]
                    },
                    "voice": "jennifer-playht"
                  });
                } else {
                  await vapi.stop();
                }
              },
              child: Text(buttonText),
            ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 60.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('Generatingclone');
                  },
                  text: 'Stop the conversation',
                  options: FFButtonOptions(
                    width: 270.0,
                    height: 50.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                    EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Colors.black,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Lato',
                      color: Colors.white,
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
                    elevation: 2.0,
                    borderSide: BorderSide(
                      width: 1.0,
                    ),
                  ),
                ),
              ),]
          ),
        ),
      ),
    );
  }
}