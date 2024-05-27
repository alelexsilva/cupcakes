import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_cupcakelist_grid_widget.dart' show HomeCupcakelistGridWidget;
import 'package:flutter/material.dart';

class HomeCupcakelistGridModel
    extends FlutterFlowModel<HomeCupcakelistGridWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarTextController;
  String? Function(BuildContext, String?)? searchBarTextControllerValidator;
  List<FirebaseCupcakesRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBarFocusNode?.dispose();
    searchBarTextController?.dispose();
  }
}
