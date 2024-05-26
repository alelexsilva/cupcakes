import '/flutter_flow/flutter_flow_util.dart';
import 'password_change_widget.dart' show PasswordChangeWidget;
import 'package:flutter/material.dart';

class PasswordChangeModel extends FlutterFlowModel<PasswordChangeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for senhaatual widget.
  FocusNode? senhaatualFocusNode;
  TextEditingController? senhaatualTextController;
  late bool senhaatualVisibility;
  String? Function(BuildContext, String?)? senhaatualTextControllerValidator;
  // State field(s) for senhanova widget.
  FocusNode? senhanovaFocusNode;
  TextEditingController? senhanovaTextController;
  late bool senhanovaVisibility;
  String? Function(BuildContext, String?)? senhanovaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaatualVisibility = false;
    senhanovaVisibility = false;
  }

  @override
  void dispose() {
    senhaatualFocusNode?.dispose();
    senhaatualTextController?.dispose();

    senhanovaFocusNode?.dispose();
    senhanovaTextController?.dispose();
  }
}
