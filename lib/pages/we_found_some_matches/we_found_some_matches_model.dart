import '/components/dating_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'we_found_some_matches_widget.dart' show WeFoundSomeMatchesWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WeFoundSomeMatchesModel
    extends FlutterFlowModel<WeFoundSomeMatchesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // Model for Dating component.
  late DatingModel datingModel1;
  // Model for Dating component.
  late DatingModel datingModel2;
  // Model for Dating component.
  late DatingModel datingModel3;

  @override
  void initState(BuildContext context) {
    datingModel1 = createModel(context, () => DatingModel());
    datingModel2 = createModel(context, () => DatingModel());
    datingModel3 = createModel(context, () => DatingModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    datingModel1.dispose();
    datingModel2.dispose();
    datingModel3.dispose();
  }
}
