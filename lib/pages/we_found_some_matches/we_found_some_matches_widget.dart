import '/components/dating_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'we_found_some_matches_model.dart';
export 'we_found_some_matches_model.dart';

class WeFoundSomeMatchesWidget extends StatefulWidget {
  const WeFoundSomeMatchesWidget({super.key});

  @override
  State<WeFoundSomeMatchesWidget> createState() =>
      _WeFoundSomeMatchesWidgetState();
}

class _WeFoundSomeMatchesWidgetState extends State<WeFoundSomeMatchesWidget> {
  late WeFoundSomeMatchesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WeFoundSomeMatchesModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'We found some matches! ',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).displaySmall.override(
                      fontFamily: 'Lato',
                      fontSize: 30.0,
                      letterSpacing: 0.0,
                    ),
              ),
              Container(
                width: double.infinity,
                height: 650.0,
                child: CarouselSlider(
                  items: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('ConversationClone');
                      },
                      child: wrapWithModel(
                        model: _model.datingModel1,
                        updateCallback: () => setState(() {}),
                        child: DatingWidget(
                          imageUrl:
                              'https://i0.wp.com/perell.com/wp-content/uploads/2020/12/grant-sanderson.png?w=1500&ssl=1',
                          userName: 'Grant Sanderson',
                          userDescription: 'We have detected the user loves maths, and physics just like you !',
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('ConversationClone');
                      },
                      child: wrapWithModel(
                        model: _model.datingModel2,
                        updateCallback: () => setState(() {}),
                        child: DatingWidget(
                          imageUrl:
                              'https://poets.org/sites/default/files/images/biographies/CharlesBukowski_NewBioImage.jpg',
                          userName: 'Bukowski',
                          userDescription: 'We noticed you guys, would be a really nice romantic match.',
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('ConversationClone');
                      },
                      child: wrapWithModel(
                        model: _model.datingModel3,
                        updateCallback: () => setState(() {}),
                        child: DatingWidget(
                          imageUrl:
                              'https://www.gala.fr/imgre/fit/~1~gal~2024~01~18~3290ae18-dd4b-4992-b05b-3ebcf790e586.jpeg/3197x2398/quality/80/barack-obama.jpeg',
                          userName: 'Barack Obama',
                          userDescription: 'We have noticed he is really mission driven just like you !',
                        ),
                      ),
                    ),
                  ],
                  carouselController: _model.carouselController ??=
                      CarouselController(),
                  options: CarouselOptions(
                    initialPage: 1,
                    viewportFraction: 0.87,
                    disableCenter: true,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.15,
                    enableInfiniteScroll: true,
                    scrollDirection: Axis.horizontal,
                    autoPlay: false,
                    onPageChanged: (index, _) =>
                        _model.carouselCurrentIndex = index,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
