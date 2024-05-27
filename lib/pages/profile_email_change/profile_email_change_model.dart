import '/flutter_flow/flutter_flow_util.dart';
import 'profile_email_change_widget.dart' show ProfileEmailChangeWidget;
import 'package:flutter/material.dart';

class ProfileEmailChangeModel
    extends FlutterFlowModel<ProfileEmailChangeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for sobrenome widget.
  FocusNode? sobrenomeFocusNode;
  TextEditingController? sobrenomeTextController;
  String? Function(BuildContext, String?)? sobrenomeTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    sobrenomeFocusNode?.dispose();
    sobrenomeTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
