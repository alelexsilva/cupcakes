import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'cupcake_product_model.dart';
export 'cupcake_product_model.dart';

class CupcakeProductWidget extends StatefulWidget {
  const CupcakeProductWidget({
    super.key,
    required this.refCupcakelist,
    this.refCupcakess,
  });

  final DocumentReference? refCupcakelist;
  final FirebaseCupcakesRecord? refCupcakess;

  @override
  State<CupcakeProductWidget> createState() => _CupcakeProductWidgetState();
}

class _CupcakeProductWidgetState extends State<CupcakeProductWidget>
    with TickerProviderStateMixin {
  late CupcakeProductModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CupcakeProductModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().appCart.contains(widget.refCupcakess?.reference)) {
        setState(() {
          FFAppState().appTempQntItens = widget.refCupcakess!.quantity;
        });
      } else {
        return;
      }
    });

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 60.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 80.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 140.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<FirebaseCupcakesRecord>(
      stream: FirebaseCupcakesRecord.getDocument(widget.refCupcakelist!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final cupcakeProductFirebaseCupcakesRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              leading: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pop();
                },
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 24.0, 0.0),
                        child: badges.Badge(
                          badgeContent: Text(
                            FFAppState().appCart.length.toString(),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Space Grotesk',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          showBadge: true,
                          shape: badges.BadgeShape.circle,
                          badgeColor: FlutterFlowTheme.of(context).primary,
                          elevation: 4.0,
                          padding: const EdgeInsets.all(8.0),
                          position: badges.BadgePosition.topEnd(),
                          animationType: badges.BadgeAnimationType.scale,
                          toAnimate: true,
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            buttonSize: 48.0,
                            icon: Icon(
                              Icons.shopping_cart_outlined,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 25.0,
                            ),
                            onPressed: () async {
                              context.pushNamed('cart');
                            },
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).primary,
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 35.0,
                          fillColor: FlutterFlowTheme.of(context).accent1,
                          icon: Icon(
                            Icons.settings,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 20.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('profile');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Hero(
                              tag: cupcakeProductFirebaseCupcakesRecord.img,
                              transitionOnUserGestures: true,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  cupcakeProductFirebaseCupcakesRecord.img,
                                  width: double.infinity,
                                  height: 430.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                cupcakeProductFirebaseCupcakesRecord.name,
                                'dft_nome',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 16.0),
                            child: Text(
                              valueOrDefault<String>(
                                cupcakeProductFirebaseCupcakesRecord
                                    .description,
                                'dft_desc',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Space Grotesk',
                                    letterSpacing: 0.0,
                                  ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation']!),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 40.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.57, -1.01),
                                      child: Text(
                                        formatNumber(
                                          functions.fncQntPrice(
                                              cupcakeProductFirebaseCupcakesRecord
                                                  .price,
                                              FFAppState().appCart.contains(
                                                      cupcakeProductFirebaseCupcakesRecord
                                                          .reference)
                                                  ? FFAppState().appTempQntItens
                                                  : _model.localAppQntItens,
                                              FFAppState().appTempQntPrice),
                                          formatType: FormatType.decimal,
                                          decimalType: DecimalType.commaDecimal,
                                          currency: 'R\$',
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 130.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: FlutterFlowCountController(
                                    decrementIconBuilder: (enabled) => Icon(
                                      Icons.remove_rounded,
                                      color: enabled
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryText
                                          : FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      size: 16.0,
                                    ),
                                    incrementIconBuilder: (enabled) => Icon(
                                      Icons.add_rounded,
                                      color: enabled
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      size: 16.0,
                                    ),
                                    countBuilder: (count) => Text(
                                      count.toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    count: _model.countControllerValue ??=
                                        valueOrDefault<int>(
                                      FFAppState().appCart.contains(
                                              cupcakeProductFirebaseCupcakesRecord
                                                  .reference)
                                          ? cupcakeProductFirebaseCupcakesRecord
                                              .quantity
                                          : 1,
                                      1,
                                    ),
                                    updateCount: (count) async {
                                      setState(() =>
                                          _model.countControllerValue = count);
                                      setState(() {
                                        _model.localAppQntItens =
                                            _model.countControllerValue!;
                                      });
                                      setState(() {
                                        FFAppState().appTempQntItens =
                                            _model.countControllerValue!;
                                      });
                                    },
                                    stepSize: 1,
                                    minimum: 1,
                                  ),
                                ),
                              ],
                            ).animateOnPageLoad(
                                animationsMap['rowOnPageLoadAnimation']!),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x320F1113),
                            offset: Offset(
                              0.0,
                              -2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 34.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Stack(
                              children: [
                                if (FFAppState().appCart.contains(
                                        cupcakeProductFirebaseCupcakesRecord
                                            .reference) ==
                                    true)
                                  FFButtonWidget(
                                    onPressed: () async {
                                      // reduzir valor somaCart
                                      setState(() {
                                        FFAppState().appSomaCart = FFAppState()
                                                .appSomaCart +
                                            functions.fncSomaNegativa(
                                                cupcakeProductFirebaseCupcakesRecord
                                                    .qtnPrice);
                                      });
                                      // att firebasee quantidade

                                      await cupcakeProductFirebaseCupcakesRecord
                                          .reference
                                          .update(
                                              createFirebaseCupcakesRecordData(
                                        quantity: _model.countControllerValue,
                                      ));
                                      // update appPrecoQtd
                                      setState(() {
                                        FFAppState().appTempQntPrice =
                                            functions.fncQntPrice(
                                                cupcakeProductFirebaseCupcakesRecord
                                                    .price,
                                                _model.localAppQntItens,
                                                FFAppState().appTempQntPrice);
                                      });
                                      // att firebasee qntprice

                                      await cupcakeProductFirebaseCupcakesRecord
                                          .reference
                                          .update(
                                              createFirebaseCupcakesRecordData(
                                        qtnPrice: FFAppState().appTempQntPrice,
                                      ));
                                      // soma total carrinho
                                      setState(() {
                                        FFAppState().appSomaCart = FFAppState()
                                                .appSomaCart +
                                            functions.fncQntPrice(
                                                cupcakeProductFirebaseCupcakesRecord
                                                    .price,
                                                _model.countControllerValue!,
                                                FFAppState().appTempQntPrice);
                                      });
                                      // pop up ok
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: const Text('atualizado'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: const Text(
                                                    'atualizado vai pro carrinho?'),
                                              ),
                                            ],
                                          );
                                        },
                                      );

                                      context.pushNamed('cart');
                                    },
                                    text: 'Atualizar Carrinho',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Space Grotesk',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                if (FFAppState().appCart.contains(
                                        cupcakeProductFirebaseCupcakesRecord
                                            .reference) ==
                                    false)
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 5.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        // adiciona na lista carrinho
                                        setState(() {
                                          FFAppState().addToAppCart(
                                              cupcakeProductFirebaseCupcakesRecord
                                                  .reference);
                                        });
                                        // att firebasee quantidade

                                        await cupcakeProductFirebaseCupcakesRecord
                                            .reference
                                            .update(
                                                createFirebaseCupcakesRecordData(
                                          quantity: _model.countControllerValue,
                                        ));
                                        // update appPrecoQtd
                                        setState(() {
                                          FFAppState().appTempQntPrice =
                                              functions.fncQntPrice(
                                                  cupcakeProductFirebaseCupcakesRecord
                                                      .price,
                                                  _model.localAppQntItens,
                                                  FFAppState().appTempQntPrice);
                                        });
                                        // att firebasee qntprice

                                        await cupcakeProductFirebaseCupcakesRecord
                                            .reference
                                            .update(
                                                createFirebaseCupcakesRecordData(
                                          qtnPrice:
                                              FFAppState().appTempQntPrice,
                                        ));
                                        // soma total carrinho
                                        setState(() {
                                          FFAppState()
                                              .appSomaCart = FFAppState()
                                                  .appSomaCart +
                                              functions.fncQntPrice(
                                                  cupcakeProductFirebaseCupcakesRecord
                                                      .price,
                                                  _model.countControllerValue!,
                                                  FFAppState().appTempQntPrice);
                                        });
                                        // clicou botao adicionar carrinho s/n

                                        await cupcakeProductFirebaseCupcakesRecord
                                            .reference
                                            .update(
                                                createFirebaseCupcakesRecordData(
                                          id: '1',
                                        ));
                                        // pop up ok
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: const Text('ok'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: const Text('vai pra lista?'),
                                                ),
                                              ],
                                            );
                                          },
                                        );

                                        context.pushNamed('home_cupcakelist');
                                      },
                                      text: 'Adicionar ao Carrinho',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Space Grotesk',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            Stack(
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-0.72, -0.98),
                                  child: Text(
                                    'CC',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Space Grotesk',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.18, -0.08),
                                  child: Text(
                                    valueOrDefault<String>(
                                      _model.countControllerValue?.toString(),
                                      '99',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Space Grotesk',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-0.72, -0.98),
                                  child: Text(
                                    'AppTQI',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Space Grotesk',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.18, -0.08),
                                  child: Text(
                                    FFAppState().appTempQntItens.toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Space Grotesk',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-0.72, -0.98),
                                  child: Text(
                                    'quantiyy',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Space Grotesk',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.18, -0.08),
                                  child: Text(
                                    cupcakeProductFirebaseCupcakesRecord
                                        .quantity
                                        .toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Space Grotesk',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation']!),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
