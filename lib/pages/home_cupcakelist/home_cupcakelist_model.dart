import '/flutter_flow/flutter_flow_util.dart';
import 'home_cupcakelist_widget.dart' show HomeCupcakelistWidget;
import 'package:flutter/material.dart';

class HomeCupcakelistModel extends FlutterFlowModel<HomeCupcakelistWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
