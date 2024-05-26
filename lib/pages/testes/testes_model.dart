import '/flutter_flow/flutter_flow_util.dart';
import 'testes_widget.dart' show TestesWidget;
import 'package:flutter/material.dart';

class TestesModel extends FlutterFlowModel<TestesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
