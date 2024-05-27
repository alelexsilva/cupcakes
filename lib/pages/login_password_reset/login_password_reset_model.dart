import '/flutter_flow/flutter_flow_util.dart';
import 'login_password_reset_widget.dart' show LoginPasswordResetWidget;
import 'package:flutter/material.dart';

class LoginPasswordResetModel
    extends FlutterFlowModel<LoginPasswordResetWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
