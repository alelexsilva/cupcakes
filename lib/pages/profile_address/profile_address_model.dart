import '/flutter_flow/flutter_flow_util.dart';
import 'profile_address_widget.dart' show ProfileAddressWidget;
import 'package:flutter/material.dart';

class ProfileAddressModel extends FlutterFlowModel<ProfileAddressWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for address_rua widget.
  FocusNode? addressRuaFocusNode1;
  TextEditingController? addressRuaTextController1;
  String? Function(BuildContext, String?)? addressRuaTextController1Validator;
  // State field(s) for address_n widget.
  FocusNode? addressNFocusNode;
  TextEditingController? addressNTextController;
  String? Function(BuildContext, String?)? addressNTextControllerValidator;
  // State field(s) for address_bairro widget.
  FocusNode? addressBairroFocusNode;
  TextEditingController? addressBairroTextController;
  String? Function(BuildContext, String?)? addressBairroTextControllerValidator;
  // State field(s) for address_rua widget.
  FocusNode? addressRuaFocusNode2;
  TextEditingController? addressRuaTextController2;
  String? Function(BuildContext, String?)? addressRuaTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    addressRuaFocusNode1?.dispose();
    addressRuaTextController1?.dispose();

    addressNFocusNode?.dispose();
    addressNTextController?.dispose();

    addressBairroFocusNode?.dispose();
    addressBairroTextController?.dispose();

    addressRuaFocusNode2?.dispose();
    addressRuaTextController2?.dispose();
  }
}
