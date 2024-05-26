import '/flutter_flow/flutter_flow_util.dart';
import 'cupcake_product_widget.dart' show CupcakeProductWidget;
import 'package:flutter/material.dart';

class CupcakeProductModel extends FlutterFlowModel<CupcakeProductWidget> {
  ///  Local state fields for this page.

  int localAppQntItens = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
